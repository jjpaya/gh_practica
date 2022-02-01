import hudson.model.User;
import hudson.tasks.Mailer;

def initiator = (currentBuild.getBuildCauses('hudson.model.Cause$UserIdCause') ?: currentBuild.getBuildCauses() ?: [])[0]
def user = initiator?.userId ? User.get(initiator?.userId) : User.current()

def notifMailAddr = user.getProperty(Mailer.UserProperty.class).getAddress()

pipeline {
	agent any
	parameters {
		string(name: 'executor', description: 'Quien ejecuta la accion', defaultValue: initiator?.userId ?: 'Jenkins')
		string(name: 'reason', description: 'Razon de ejecucción', defaultValue: initiator?.shortDescription ?: 'Ejecucción automática')
		string(name: 'notif_mail', description: 'Email a notificar', defaultValue: notifMailAddr)
	}
	
	environment {
		NO_COLOR = '1'
	}

	stages {
		stage('Install') {
			steps {
				sh 'npm install'
			}
		}
		
		stage('Linter') {
			steps {
				script { env.S_LINT_OK = sh(script: "npm run lint", returnStatus: true) }
			}
		}
		
		stage('Test') {
			steps {
				script {
					sh 'npm run dev &'
					env.S_TEST_OK = sh(script: "npm run cypress_run", returnStatus: true)
				}
			}
		}

		stage('Update_Readme') {
			steps {
				script {
					withCredentials([usernameColonPassword(credentialsId: 'github_token', variable: 'GH_TOKEN')]) {
						sh 'sh ./jenkinsScripts/repo-config.sh "${GH_TOKEN}"'
					}

					env.S_BADGE_OK = sh(script: "sh ./jenkinsScripts/badge.sh '${S_TEST_OK}'", returnStatus: true)

					if (env.S_BADGE_OK == "0") {
						env.S_BADGE_OK = sh(script: "sh ./jenkinsScripts/commit.sh '${executor}' '${reason}'", returnStatus: true)
					}
				}
			}
		}

		stage('Deploy_to_Vercel') {
			steps {
				script {
					withCredentials([
						string(credentialsId: 'vercel_token', variable: 'VC_TOKEN'),
						string(credentialsId: 'vercel_org_id', variable: 'VERCEL_ORG_ID'),
						string(credentialsId: 'vercel_proj_id', variable: 'VERCEL_PROJECT_ID')
					]) {
						env.S_DEPLOY_OK = sh(script: 'node ./node_modules/.bin/vercel --production --token=${VC_TOKEN}', returnStatus: true)
					}
				}
			}
		}

		stage('Notificacion') {
			steps {
				script {
					emailext(
						subject: "Resultado de la construcción '${env.JOB_NAME} [${env.BUILD_NUMBER}]'",
						body: """
							<p>Se ha ejecutado el job <a href='${env.BUILD_URL}'>'${env.JOB_NAME} [${env.BUILD_NUMBER}]'</a>, causado por: ${executor}, con la razon: ${reason}.</p>
							<p>Resultados de la ejecucción:</p>
							<br>
							<p>- linter_job: ${env.S_LINT_OK}</p>
							<p>- cypress_job: ${env.S_TEST_OK}</p>
							<p>- add_badge_job: ${env.S_BADGE_OK}</p>
							<p>- deploy_job: ${env.S_DEPLOY_OK}</p>
						""",
						to: notif_mail
					)
				}
			}
		}

		stage('Custom_stage') {
			steps {
				sh 'sh ./jenkinsScripts/bump.sh minor'
			}
		}
	}
}
