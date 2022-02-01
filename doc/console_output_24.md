# Console output del job 24
```
Started by user admin
Checking out git https://github.com/jjpaya/gh_practica into /var/jenkins_home/workspace/jenkins_practica@script to read Jenkinsfile
The recommended git tool is: NONE
No credentials specified
 > git rev-parse --resolve-git-dir /var/jenkins_home/workspace/jenkins_practica@script/.git # timeout=10
Fetching changes from the remote Git repository
 > git config remote.origin.url https://github.com/jjpaya/gh_practica # timeout=10
Fetching upstream changes from https://github.com/jjpaya/gh_practica
 > git --version # timeout=10
 > git --version # 'git version 2.30.2'
 > git fetch --tags --force --progress -- https://github.com/jjpaya/gh_practica +refs/heads/*:refs/remotes/origin/* # timeout=10
 > git rev-parse refs/remotes/origin/jenkins^{commit} # timeout=10
Checking out Revision a743383aa869612bc3b70a4abb391809c7c06701 (refs/remotes/origin/jenkins)
 > git config core.sparsecheckout # timeout=10
 > git checkout -f a743383aa869612bc3b70a4abb391809c7c06701 # timeout=10
Commit message: "fix"
 > git rev-list --no-walk e4f4b7a3435b3079e94c429e11b8190b9221233a # timeout=10
[Pipeline] Start of Pipeline
[Pipeline] node
Running on Jenkins in /var/jenkins_home/workspace/jenkins_practica
[Pipeline] {
[Pipeline] stage
[Pipeline] { (Declarative: Checkout SCM)
[Pipeline] checkout
The recommended git tool is: NONE
No credentials specified
 > git rev-parse --resolve-git-dir /var/jenkins_home/workspace/jenkins_practica/.git # timeout=10
Fetching changes from the remote Git repository
 > git config remote.origin.url https://github.com/jjpaya/gh_practica # timeout=10
Fetching upstream changes from https://github.com/jjpaya/gh_practica
 > git --version # timeout=10
 > git --version # 'git version 2.30.2'
 > git fetch --tags --force --progress -- https://github.com/jjpaya/gh_practica +refs/heads/*:refs/remotes/origin/* # timeout=10
 > git rev-parse refs/remotes/origin/jenkins^{commit} # timeout=10
Checking out Revision a743383aa869612bc3b70a4abb391809c7c06701 (refs/remotes/origin/jenkins)
 > git config core.sparsecheckout # timeout=10
 > git checkout -f a743383aa869612bc3b70a4abb391809c7c06701 # timeout=10
Commit message: "fix"
[Pipeline] }
[Pipeline] // stage
[Pipeline] withEnv
[Pipeline] {
[Pipeline] withEnv
[Pipeline] {
[Pipeline] stage
[Pipeline] { (Run CI?)
[Pipeline] script
[Pipeline] {
[Pipeline] sh
+ git log -1 --pretty=%B
+ fgrep -i -e [ci skip]
[Pipeline] }
[Pipeline] // script
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Install)
[Pipeline] sh
+ npm install

up to date, audited 492 packages in 2s

2 high severity vulnerabilities

To address all issues, run:
  npm audit fix --force

Run `npm audit` for details.
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Linter)
[Pipeline] script
[Pipeline] {
[Pipeline] sh
+ npm run lint

> lint
> next lint

✔ No ESLint warnings or errors
[Pipeline] }
[Pipeline] // script
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Test)
[Pipeline] script
[Pipeline] {
[Pipeline] sh
+ npm run dev
[Pipeline] sh
+ npm run cypress_run

> cypress_run
> cypress run

[11824:0201/224525.797989:ERROR:bus.cc(392)] Failed to connect to the bus: Failed to connect to socket /run/dbus/system_bus_socket: No such file or directory
[11824:0201/224525.801847:ERROR:bus.cc(392)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
[11824:0201/224525.801899:ERROR:bus.cc(392)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
[12026:0201/224525.822222:ERROR:gpu_init.cc(453)] Passthrough is not supported, GL is swiftshader, ANGLE is 

====================================================================================================

  (Run Starting)

  ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
  │ Cypress:        9.4.1                                                                          │
  │ Browser:        Electron 94 (headless)                                                         │
  │ Node Version:   v12.22.5 (/usr/bin/node)                                                       │
  │ Specs:          2 found (1-my-tests/api/users.spec.js, 1-my-tests/pages/index.spec.js)         │
  └────────────────────────────────────────────────────────────────────────────────────────────────┘


────────────────────────────────────────────────────────────────────────────────────────────────────
                                                                                                    
  Running:  1-my-tests/api/users.spec.js                                                    (1 of 2)
[11824:0201/224527.810503:ERROR:bus.cc(392)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
Browserslist: caniuse-lite is outdated. Please run:
npx browserslist@latest --update-db

Why you should do it regularly:
https://github.com/browserslist/browserslist#browsers-data-updating


  Test de endpoints
    ✓ Endpoint user creation (2094ms)
    ✓ Endpoint user creation (50ms)
    ✓ Endpoint user creation (58ms)
    ✓ Endpoint user creation (72ms)
    ✓ Endpoint user creation (71ms)
    ✓ Endpoint user creation (76ms)
    ✓ Endpoint user creation (92ms)
    ✓ Endpoint user creation (108ms)
    ✓ Endpoint user creation (271ms)
    ✓ Endpoint user creation (62ms)
    ✓ Endpoint get users (86ms)


  11 passing (5s)


  (Results)

  ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
  │ Tests:        11                                                                               │
  │ Passing:      11                                                                               │
  │ Failing:      0                                                                                │
  │ Pending:      0                                                                                │
  │ Skipped:      0                                                                                │
  │ Screenshots:  0                                                                                │
  │ Video:        true                                                                             │
  │ Duration:     5 seconds                                                                        │
  │ Spec Ran:     1-my-tests/api/users.spec.js                                                     │
  └────────────────────────────────────────────────────────────────────────────────────────────────┘


  (Video)

  -  Started processing:  Compressing to 32 CRF                                                     
  -  Finished processing: /var/jenkins_home/workspace/jenkins_practica/cypress/videos     (1 second)
                          /1-my-tests/api/users.spec.js.mp4                                         


────────────────────────────────────────────────────────────────────────────────────────────────────
                                                                                                    
  Running:  1-my-tests/pages/index.spec.js                                                  (2 of 2)
[11824:0201/224538.576355:ERROR:bus.cc(392)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")


  Test de endpoints
    ✓ Endpoint to check index title (1214ms)


  1 passing (1s)


  (Results)

  ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
  │ Tests:        1                                                                                │
  │ Passing:      1                                                                                │
  │ Failing:      0                                                                                │
  │ Pending:      0                                                                                │
  │ Skipped:      0                                                                                │
  │ Screenshots:  0                                                                                │
  │ Video:        true                                                                             │
  │ Duration:     1 second                                                                         │
  │ Spec Ran:     1-my-tests/pages/index.spec.js                                                   │
  └────────────────────────────────────────────────────────────────────────────────────────────────┘


  (Video)

  -  Started processing:  Compressing to 32 CRF                                                     
  -  Finished processing: /var/jenkins_home/workspace/jenkins_practica/cypress/videos    (0 seconds)
                          /1-my-tests/pages/index.spec.js.mp4                                       


====================================================================================================

  (Run Finished)


       Spec                                              Tests  Passing  Failing  Pending  Skipped  
  ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
  │ ✔  1-my-tests/api/users.spec.js             00:05       11       11        -        -        - │
  ├────────────────────────────────────────────────────────────────────────────────────────────────┤
  │ ✔  1-my-tests/pages/index.spec.js           00:01        1        1        -        -        - │
  └────────────────────────────────────────────────────────────────────────────────────────────────┘
    ✔  All specs passed!                        00:06       12       12        -        -        -  

[Pipeline] }
[Pipeline] // script
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Update_Readme)
[Pipeline] script
[Pipeline] {
[Pipeline] withCredentials
Masking supported pattern matches of $GH_TOKEN
[Pipeline] {
[Pipeline] sh
+ sh ./jenkinsScripts/repo-config.sh ****
[Pipeline] }
[Pipeline] // withCredentials
[Pipeline] sh
+ bash ./jenkinsScripts/badge.sh 0
[Pipeline] sh
+ sh ./jenkinsScripts/commit.sh admin Started by user admin
HEAD detached at a743383
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
	modified:   cypress/videos/1-my-tests/api/users.spec.js.mp4
	modified:   cypress/videos/1-my-tests/pages/index.spec.js.mp4
	modified:   package-lock.json

no changes added to commit (use "git add" and/or "git commit -a")
[Pipeline] }
[Pipeline] // script
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Deploy_to_Vercel)
[Pipeline] script
[Pipeline] {
[Pipeline] withCredentials
Masking supported pattern matches of $VC_TOKEN or $VERCEL_ORG_ID or $VERCEL_PROJECT_ID
[Pipeline] {
[Pipeline] sh
+ node ./node_modules/.bin/vercel --prod --scope=jjpaya --token=****
Vercel CLI 23.1.2
- Deploying jjpaya/jenkins-practica
[2K[GInspect: https://vercel.com/jjpaya/jenkins-practica/8H1hv5YW9zhVqpJzSVSu82GryPJY [4s]
https://jenkins-practica-kvcpti81p-jjpaya.vercel.app- Queued
[2K[GProduction: https://gh-practica.vercel.app [27s]
[Pipeline] }
[Pipeline] // withCredentials
[Pipeline] }
[Pipeline] // script
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Final Parallel)
[Pipeline] parallel
[Pipeline] { (Branch: Notificacion)
[Pipeline] { (Branch: Custom_stage)
[Pipeline] stage
[Pipeline] { (Notificacion)
[Pipeline] stage
[Pipeline] { (Custom_stage)
[Pipeline] script
[Pipeline] {
[Pipeline] sh
[Pipeline] emailext
+ bash ./jenkinsScripts/bump.sh bug
Sending email to: ******@gmail.com
To https://github.com/jjpaya/gh_practica.git
 * [new tag]         1.0.13 -> 1.0.13
[Pipeline] }
[Pipeline] // stage
[Pipeline] }
[Pipeline] }
[Pipeline] // script
[Pipeline] }
[Pipeline] // stage
[Pipeline] }
[Pipeline] // parallel
[Pipeline] }
[Pipeline] // stage
[Pipeline] }
[Pipeline] // withEnv
[Pipeline] }
[Pipeline] // withEnv
[Pipeline] }
[Pipeline] // node
[Pipeline] End of Pipeline
Finished: SUCCESS
```