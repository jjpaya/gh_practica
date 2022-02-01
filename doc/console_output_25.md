# Console output del job 25
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
Checking out Revision 380a81a9e68ae61646c4e7fc3c4b8318af13c40c (refs/remotes/origin/jenkins)
 > git config core.sparsecheckout # timeout=10
 > git checkout -f 380a81a9e68ae61646c4e7fc3c4b8318af13c40c # timeout=10
Commit message: "causar fallo tests"
 > git rev-list --no-walk a743383aa869612bc3b70a4abb391809c7c06701 # timeout=10
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
Checking out Revision 380a81a9e68ae61646c4e7fc3c4b8318af13c40c (refs/remotes/origin/jenkins)
 > git config core.sparsecheckout # timeout=10
 > git checkout -f 380a81a9e68ae61646c4e7fc3c4b8318af13c40c # timeout=10
Commit message: "causar fallo tests"
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

[12739:0201/230002.514677:ERROR:bus.cc(392)] Failed to connect to the bus: Failed to connect to socket /run/dbus/system_bus_socket: No such file or directory
[12739:0201/230002.516119:ERROR:bus.cc(392)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
[12739:0201/230002.516155:ERROR:bus.cc(392)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
[12938:0201/230002.532958:ERROR:gpu_init.cc(453)] Passthrough is not supported, GL is swiftshader, ANGLE is 

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
[12739:0201/230004.559891:ERROR:bus.cc(392)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
Browserslist: caniuse-lite is outdated. Please run:
npx browserslist@latest --update-db

Why you should do it regularly:
https://github.com/browserslist/browserslist#browsers-data-updating


  Test de endpoints
    1) Endpoint user creation
    2) Endpoint user creation
    3) Endpoint user creation
    4) Endpoint user creation
    5) Endpoint user creation
    6) Endpoint user creation
    7) Endpoint user creation
    8) Endpoint user creation
    9) Endpoint user creation
    10) Endpoint user creation
    11) Endpoint get users


  0 passing (9s)
  11 failing

  1) Test de endpoints
       Endpoint user creation:
     CypressError: `cy.request()` failed on:

http://localhost:3000/api/users

The response we received from your web server was:

  > 405: Method Not Allowed

This was considered a failure because the status code was not `2xx` or `3xx`.

If you do not want status codes to cause failures pass the option: `failOnStatusCode: false`

-----------------------------------------------------------

The request we sent was:

Method: POST
URL: http://localhost:3000/api/users
Headers: {
  "Connection": "keep-alive",
  "user-agent": "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Cypress/9.4.1 Chrome/94.0.4606.81 Electron/15.3.4 Safari/537.36",
  "accept": "*/*",
  "accept-encoding": "gzip, deflate",
  "content-type": "application/json",
  "content-length": 87
}
Body: {"name":"testname916536","lastName":"testname916536","email":"testname916536@gmai.com"}

-----------------------------------------------------------

The response we got was:

Status: 405 - Method Not Allowed
Headers: {
  "date": "Tue, 01 Feb 2022 23:00:10 GMT",
  "connection": "keep-alive",
  "keep-alive": "timeout=5",
  "transfer-encoding": "chunked"
}
Body: Method POST Not Allowed


https://on.cypress.io/request
      at http://localhost:3000/__cypress/runner/cypress_runner.js:160569:80
      at tryCatcher (http://localhost:3000/__cypress/runner/cypress_runner.js:13196:23)
      at Promise._settlePromiseFromHandler (http://localhost:3000/__cypress/runner/cypress_runner.js:11131:31)
      at Promise._settlePromise (http://localhost:3000/__cypress/runner/cypress_runner.js:11188:18)
      at Promise._settlePromise0 (http://localhost:3000/__cypress/runner/cypress_runner.js:11233:10)
      at Promise._settlePromises (http://localhost:3000/__cypress/runner/cypress_runner.js:11313:18)
      at _drainQueueStep (http://localhost:3000/__cypress/runner/cypress_runner.js:7903:12)
      at _drainQueue (http://localhost:3000/__cypress/runner/cypress_runner.js:7896:9)
      at Async.../../node_modules/bluebird/js/release/async.js.Async._drainQueues (http://localhost:3000/__cypress/runner/cypress_runner.js:7912:5)
      at Async.drainQueues (http://localhost:3000/__cypress/runner/cypress_runner.js:7782:14)
  From Your Spec Code:
      at Context.eval (http://localhost:3000/__cypress/tests?p=cypress/integration/1-my-tests/api/users.spec.js:105:7)

  2) Test de endpoints
       Endpoint user creation:
     CypressError: `cy.request()` failed on:

http://localhost:3000/api/users

The response we received from your web server was:

  > 405: Method Not Allowed

This was considered a failure because the status code was not `2xx` or `3xx`.

If you do not want status codes to cause failures pass the option: `failOnStatusCode: false`

-----------------------------------------------------------

The request we sent was:

Method: POST
URL: http://localhost:3000/api/users
Headers: {
  "Connection": "keep-alive",
  "user-agent": "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Cypress/9.4.1 Chrome/94.0.4606.81 Electron/15.3.4 Safari/537.36",
  "accept": "*/*",
  "accept-encoding": "gzip, deflate",
  "content-type": "application/json",
  "content-length": 87
}
Body: {"name":"testname990207","lastName":"testname990207","email":"testname990207@gmai.com"}

-----------------------------------------------------------

The response we got was:

Status: 405 - Method Not Allowed
Headers: {
  "date": "Tue, 01 Feb 2022 23:00:11 GMT",
  "connection": "keep-alive",
  "keep-alive": "timeout=5",
  "transfer-encoding": "chunked"
}
Body: Method POST Not Allowed


https://on.cypress.io/request
      at http://localhost:3000/__cypress/runner/cypress_runner.js:160569:80
      at tryCatcher (http://localhost:3000/__cypress/runner/cypress_runner.js:13196:23)
      at Promise._settlePromiseFromHandler (http://localhost:3000/__cypress/runner/cypress_runner.js:11131:31)
      at Promise._settlePromise (http://localhost:3000/__cypress/runner/cypress_runner.js:11188:18)
      at Promise._settlePromise0 (http://localhost:3000/__cypress/runner/cypress_runner.js:11233:10)
      at Promise._settlePromises (http://localhost:3000/__cypress/runner/cypress_runner.js:11313:18)
      at _drainQueueStep (http://localhost:3000/__cypress/runner/cypress_runner.js:7903:12)
      at _drainQueue (http://localhost:3000/__cypress/runner/cypress_runner.js:7896:9)
      at Async.../../node_modules/bluebird/js/release/async.js.Async._drainQueues (http://localhost:3000/__cypress/runner/cypress_runner.js:7912:5)
      at Async.drainQueues (http://localhost:3000/__cypress/runner/cypress_runner.js:7782:14)
  From Your Spec Code:
      at Context.eval (http://localhost:3000/__cypress/tests?p=cypress/integration/1-my-tests/api/users.spec.js:116:10)

  3) Test de endpoints
       Endpoint user creation:
     CypressError: `cy.request()` failed on:

http://localhost:3000/api/users

The response we received from your web server was:

  > 405: Method Not Allowed

This was considered a failure because the status code was not `2xx` or `3xx`.

If you do not want status codes to cause failures pass the option: `failOnStatusCode: false`

-----------------------------------------------------------

The request we sent was:

Method: POST
URL: http://localhost:3000/api/users
Headers: {
  "Connection": "keep-alive",
  "user-agent": "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Cypress/9.4.1 Chrome/94.0.4606.81 Electron/15.3.4 Safari/537.36",
  "accept": "*/*",
  "accept-encoding": "gzip, deflate",
  "content-type": "application/json",
  "content-length": 87
}
Body: {"name":"testname606467","lastName":"testname606467","email":"testname606467@gmai.com"}

-----------------------------------------------------------

The response we got was:

Status: 405 - Method Not Allowed
Headers: {
  "date": "Tue, 01 Feb 2022 23:00:11 GMT",
  "connection": "keep-alive",
  "keep-alive": "timeout=5",
  "transfer-encoding": "chunked"
}
Body: Method POST Not Allowed


https://on.cypress.io/request
      at http://localhost:3000/__cypress/runner/cypress_runner.js:160569:80
      at tryCatcher (http://localhost:3000/__cypress/runner/cypress_runner.js:13196:23)
      at Promise._settlePromiseFromHandler (http://localhost:3000/__cypress/runner/cypress_runner.js:11131:31)
      at Promise._settlePromise (http://localhost:3000/__cypress/runner/cypress_runner.js:11188:18)
      at Promise._settlePromise0 (http://localhost:3000/__cypress/runner/cypress_runner.js:11233:10)
      at Promise._settlePromises (http://localhost:3000/__cypress/runner/cypress_runner.js:11313:18)
      at _drainQueueStep (http://localhost:3000/__cypress/runner/cypress_runner.js:7903:12)
      at _drainQueue (http://localhost:3000/__cypress/runner/cypress_runner.js:7896:9)
      at Async.../../node_modules/bluebird/js/release/async.js.Async._drainQueues (http://localhost:3000/__cypress/runner/cypress_runner.js:7912:5)
      at Async.drainQueues (http://localhost:3000/__cypress/runner/cypress_runner.js:7782:14)
  From Your Spec Code:
      at Context.eval (http://localhost:3000/__cypress/tests?p=cypress/integration/1-my-tests/api/users.spec.js:116:10)

  4) Test de endpoints
       Endpoint user creation:
     CypressError: `cy.request()` failed on:

http://localhost:3000/api/users

The response we received from your web server was:

  > 405: Method Not Allowed

This was considered a failure because the status code was not `2xx` or `3xx`.

If you do not want status codes to cause failures pass the option: `failOnStatusCode: false`

-----------------------------------------------------------

The request we sent was:

Method: POST
URL: http://localhost:3000/api/users
Headers: {
  "Connection": "keep-alive",
  "user-agent": "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Cypress/9.4.1 Chrome/94.0.4606.81 Electron/15.3.4 Safari/537.36",
  "accept": "*/*",
  "accept-encoding": "gzip, deflate",
  "content-type": "application/json",
  "content-length": 84
}
Body: {"name":"testname16702","lastName":"testname16702","email":"testname16702@gmai.com"}

-----------------------------------------------------------

The response we got was:

Status: 405 - Method Not Allowed
Headers: {
  "date": "Tue, 01 Feb 2022 23:00:12 GMT",
  "connection": "keep-alive",
  "keep-alive": "timeout=5",
  "transfer-encoding": "chunked"
}
Body: Method POST Not Allowed


https://on.cypress.io/request
      at http://localhost:3000/__cypress/runner/cypress_runner.js:160569:80
      at tryCatcher (http://localhost:3000/__cypress/runner/cypress_runner.js:13196:23)
      at Promise._settlePromiseFromHandler (http://localhost:3000/__cypress/runner/cypress_runner.js:11131:31)
      at Promise._settlePromise (http://localhost:3000/__cypress/runner/cypress_runner.js:11188:18)
      at Promise._settlePromise0 (http://localhost:3000/__cypress/runner/cypress_runner.js:11233:10)
      at Promise._settlePromises (http://localhost:3000/__cypress/runner/cypress_runner.js:11313:18)
      at _drainQueueStep (http://localhost:3000/__cypress/runner/cypress_runner.js:7903:12)
      at _drainQueue (http://localhost:3000/__cypress/runner/cypress_runner.js:7896:9)
      at Async.../../node_modules/bluebird/js/release/async.js.Async._drainQueues (http://localhost:3000/__cypress/runner/cypress_runner.js:7912:5)
      at Async.drainQueues (http://localhost:3000/__cypress/runner/cypress_runner.js:7782:14)
  From Your Spec Code:
      at Context.eval (http://localhost:3000/__cypress/tests?p=cypress/integration/1-my-tests/api/users.spec.js:116:10)

  5) Test de endpoints
       Endpoint user creation:
     CypressError: `cy.request()` failed on:

http://localhost:3000/api/users

The response we received from your web server was:

  > 405: Method Not Allowed

This was considered a failure because the status code was not `2xx` or `3xx`.

If you do not want status codes to cause failures pass the option: `failOnStatusCode: false`

-----------------------------------------------------------

The request we sent was:

Method: POST
URL: http://localhost:3000/api/users
Headers: {
  "Connection": "keep-alive",
  "user-agent": "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Cypress/9.4.1 Chrome/94.0.4606.81 Electron/15.3.4 Safari/537.36",
  "accept": "*/*",
  "accept-encoding": "gzip, deflate",
  "content-type": "application/json",
  "content-length": 87
}
Body: {"name":"testname574552","lastName":"testname574552","email":"testname574552@gmai.com"}

-----------------------------------------------------------

The response we got was:

Status: 405 - Method Not Allowed
Headers: {
  "date": "Tue, 01 Feb 2022 23:00:12 GMT",
  "connection": "keep-alive",
  "keep-alive": "timeout=5",
  "transfer-encoding": "chunked"
}
Body: Method POST Not Allowed


https://on.cypress.io/request
      at http://localhost:3000/__cypress/runner/cypress_runner.js:160569:80
      at tryCatcher (http://localhost:3000/__cypress/runner/cypress_runner.js:13196:23)
      at Promise._settlePromiseFromHandler (http://localhost:3000/__cypress/runner/cypress_runner.js:11131:31)
      at Promise._settlePromise (http://localhost:3000/__cypress/runner/cypress_runner.js:11188:18)
      at Promise._settlePromise0 (http://localhost:3000/__cypress/runner/cypress_runner.js:11233:10)
      at Promise._settlePromises (http://localhost:3000/__cypress/runner/cypress_runner.js:11313:18)
      at _drainQueueStep (http://localhost:3000/__cypress/runner/cypress_runner.js:7903:12)
      at _drainQueue (http://localhost:3000/__cypress/runner/cypress_runner.js:7896:9)
      at Async.../../node_modules/bluebird/js/release/async.js.Async._drainQueues (http://localhost:3000/__cypress/runner/cypress_runner.js:7912:5)
      at Async.drainQueues (http://localhost:3000/__cypress/runner/cypress_runner.js:7782:14)
  From Your Spec Code:
      at Context.eval (http://localhost:3000/__cypress/tests?p=cypress/integration/1-my-tests/api/users.spec.js:116:10)

  6) Test de endpoints
       Endpoint user creation:
     CypressError: `cy.request()` failed on:

http://localhost:3000/api/users

The response we received from your web server was:

  > 405: Method Not Allowed

This was considered a failure because the status code was not `2xx` or `3xx`.

If you do not want status codes to cause failures pass the option: `failOnStatusCode: false`

-----------------------------------------------------------

The request we sent was:

Method: POST
URL: http://localhost:3000/api/users
Headers: {
  "Connection": "keep-alive",
  "user-agent": "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Cypress/9.4.1 Chrome/94.0.4606.81 Electron/15.3.4 Safari/537.36",
  "accept": "*/*",
  "accept-encoding": "gzip, deflate",
  "content-type": "application/json",
  "content-length": 87
}
Body: {"name":"testname359800","lastName":"testname359800","email":"testname359800@gmai.com"}

-----------------------------------------------------------

The response we got was:

Status: 405 - Method Not Allowed
Headers: {
  "date": "Tue, 01 Feb 2022 23:00:12 GMT",
  "connection": "keep-alive",
  "keep-alive": "timeout=5",
  "transfer-encoding": "chunked"
}
Body: Method POST Not Allowed


https://on.cypress.io/request
      at http://localhost:3000/__cypress/runner/cypress_runner.js:160569:80
      at tryCatcher (http://localhost:3000/__cypress/runner/cypress_runner.js:13196:23)
      at Promise._settlePromiseFromHandler (http://localhost:3000/__cypress/runner/cypress_runner.js:11131:31)
      at Promise._settlePromise (http://localhost:3000/__cypress/runner/cypress_runner.js:11188:18)
      at Promise._settlePromise0 (http://localhost:3000/__cypress/runner/cypress_runner.js:11233:10)
      at Promise._settlePromises (http://localhost:3000/__cypress/runner/cypress_runner.js:11313:18)
      at _drainQueueStep (http://localhost:3000/__cypress/runner/cypress_runner.js:7903:12)
      at _drainQueue (http://localhost:3000/__cypress/runner/cypress_runner.js:7896:9)
      at Async.../../node_modules/bluebird/js/release/async.js.Async._drainQueues (http://localhost:3000/__cypress/runner/cypress_runner.js:7912:5)
      at Async.drainQueues (http://localhost:3000/__cypress/runner/cypress_runner.js:7782:14)
  From Your Spec Code:
      at Context.eval (http://localhost:3000/__cypress/tests?p=cypress/integration/1-my-tests/api/users.spec.js:116:10)

  7) Test de endpoints
       Endpoint user creation:
     CypressError: `cy.request()` failed on:

http://localhost:3000/api/users

The response we received from your web server was:

  > 405: Method Not Allowed

This was considered a failure because the status code was not `2xx` or `3xx`.

If you do not want status codes to cause failures pass the option: `failOnStatusCode: false`

-----------------------------------------------------------

The request we sent was:

Method: POST
URL: http://localhost:3000/api/users
Headers: {
  "Connection": "keep-alive",
  "user-agent": "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Cypress/9.4.1 Chrome/94.0.4606.81 Electron/15.3.4 Safari/537.36",
  "accept": "*/*",
  "accept-encoding": "gzip, deflate",
  "content-type": "application/json",
  "content-length": 87
}
Body: {"name":"testname788203","lastName":"testname788203","email":"testname788203@gmai.com"}

-----------------------------------------------------------

The response we got was:

Status: 405 - Method Not Allowed
Headers: {
  "date": "Tue, 01 Feb 2022 23:00:13 GMT",
  "connection": "keep-alive",
  "keep-alive": "timeout=5",
  "transfer-encoding": "chunked"
}
Body: Method POST Not Allowed


https://on.cypress.io/request
      at http://localhost:3000/__cypress/runner/cypress_runner.js:160569:80
      at tryCatcher (http://localhost:3000/__cypress/runner/cypress_runner.js:13196:23)
      at Promise._settlePromiseFromHandler (http://localhost:3000/__cypress/runner/cypress_runner.js:11131:31)
      at Promise._settlePromise (http://localhost:3000/__cypress/runner/cypress_runner.js:11188:18)
      at Promise._settlePromise0 (http://localhost:3000/__cypress/runner/cypress_runner.js:11233:10)
      at Promise._settlePromises (http://localhost:3000/__cypress/runner/cypress_runner.js:11313:18)
      at _drainQueueStep (http://localhost:3000/__cypress/runner/cypress_runner.js:7903:12)
      at _drainQueue (http://localhost:3000/__cypress/runner/cypress_runner.js:7896:9)
      at Async.../../node_modules/bluebird/js/release/async.js.Async._drainQueues (http://localhost:3000/__cypress/runner/cypress_runner.js:7912:5)
      at Async.drainQueues (http://localhost:3000/__cypress/runner/cypress_runner.js:7782:14)
  From Your Spec Code:
      at Context.eval (http://localhost:3000/__cypress/tests?p=cypress/integration/1-my-tests/api/users.spec.js:116:10)

  8) Test de endpoints
       Endpoint user creation:
     CypressError: `cy.request()` failed on:

http://localhost:3000/api/users

The response we received from your web server was:

  > 405: Method Not Allowed

This was considered a failure because the status code was not `2xx` or `3xx`.

If you do not want status codes to cause failures pass the option: `failOnStatusCode: false`

-----------------------------------------------------------

The request we sent was:

Method: POST
URL: http://localhost:3000/api/users
Headers: {
  "Connection": "keep-alive",
  "user-agent": "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Cypress/9.4.1 Chrome/94.0.4606.81 Electron/15.3.4 Safari/537.36",
  "accept": "*/*",
  "accept-encoding": "gzip, deflate",
  "content-type": "application/json",
  "content-length": 87
}
Body: {"name":"testname695175","lastName":"testname695175","email":"testname695175@gmai.com"}

-----------------------------------------------------------

The response we got was:

Status: 405 - Method Not Allowed
Headers: {
  "date": "Tue, 01 Feb 2022 23:00:13 GMT",
  "connection": "keep-alive",
  "keep-alive": "timeout=5",
  "transfer-encoding": "chunked"
}
Body: Method POST Not Allowed


https://on.cypress.io/request
      at http://localhost:3000/__cypress/runner/cypress_runner.js:160569:80
      at tryCatcher (http://localhost:3000/__cypress/runner/cypress_runner.js:13196:23)
      at Promise._settlePromiseFromHandler (http://localhost:3000/__cypress/runner/cypress_runner.js:11131:31)
      at Promise._settlePromise (http://localhost:3000/__cypress/runner/cypress_runner.js:11188:18)
      at Promise._settlePromise0 (http://localhost:3000/__cypress/runner/cypress_runner.js:11233:10)
      at Promise._settlePromises (http://localhost:3000/__cypress/runner/cypress_runner.js:11313:18)
      at _drainQueueStep (http://localhost:3000/__cypress/runner/cypress_runner.js:7903:12)
      at _drainQueue (http://localhost:3000/__cypress/runner/cypress_runner.js:7896:9)
      at Async.../../node_modules/bluebird/js/release/async.js.Async._drainQueues (http://localhost:3000/__cypress/runner/cypress_runner.js:7912:5)
      at Async.drainQueues (http://localhost:3000/__cypress/runner/cypress_runner.js:7782:14)
  From Your Spec Code:
      at Context.eval (http://localhost:3000/__cypress/tests?p=cypress/integration/1-my-tests/api/users.spec.js:116:10)

  9) Test de endpoints
       Endpoint user creation:
     CypressError: `cy.request()` failed on:

http://localhost:3000/api/users

The response we received from your web server was:

  > 405: Method Not Allowed

This was considered a failure because the status code was not `2xx` or `3xx`.

If you do not want status codes to cause failures pass the option: `failOnStatusCode: false`

-----------------------------------------------------------

The request we sent was:

Method: POST
URL: http://localhost:3000/api/users
Headers: {
  "Connection": "keep-alive",
  "user-agent": "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Cypress/9.4.1 Chrome/94.0.4606.81 Electron/15.3.4 Safari/537.36",
  "accept": "*/*",
  "accept-encoding": "gzip, deflate",
  "content-type": "application/json",
  "content-length": 84
}
Body: {"name":"testname44756","lastName":"testname44756","email":"testname44756@gmai.com"}

-----------------------------------------------------------

The response we got was:

Status: 405 - Method Not Allowed
Headers: {
  "date": "Tue, 01 Feb 2022 23:00:13 GMT",
  "connection": "keep-alive",
  "keep-alive": "timeout=5",
  "transfer-encoding": "chunked"
}
Body: Method POST Not Allowed


https://on.cypress.io/request
      at http://localhost:3000/__cypress/runner/cypress_runner.js:160569:80
      at tryCatcher (http://localhost:3000/__cypress/runner/cypress_runner.js:13196:23)
      at Promise._settlePromiseFromHandler (http://localhost:3000/__cypress/runner/cypress_runner.js:11131:31)
      at Promise._settlePromise (http://localhost:3000/__cypress/runner/cypress_runner.js:11188:18)
      at Promise._settlePromise0 (http://localhost:3000/__cypress/runner/cypress_runner.js:11233:10)
      at Promise._settlePromises (http://localhost:3000/__cypress/runner/cypress_runner.js:11313:18)
      at _drainQueueStep (http://localhost:3000/__cypress/runner/cypress_runner.js:7903:12)
      at _drainQueue (http://localhost:3000/__cypress/runner/cypress_runner.js:7896:9)
      at Async.../../node_modules/bluebird/js/release/async.js.Async._drainQueues (http://localhost:3000/__cypress/runner/cypress_runner.js:7912:5)
      at Async.drainQueues (http://localhost:3000/__cypress/runner/cypress_runner.js:7782:14)
  From Your Spec Code:
      at Context.eval (http://localhost:3000/__cypress/tests?p=cypress/integration/1-my-tests/api/users.spec.js:116:10)

  10) Test de endpoints
       Endpoint user creation:
     CypressError: `cy.request()` failed on:

http://localhost:3000/api/users

The response we received from your web server was:

  > 405: Method Not Allowed

This was considered a failure because the status code was not `2xx` or `3xx`.

If you do not want status codes to cause failures pass the option: `failOnStatusCode: false`

-----------------------------------------------------------

The request we sent was:

Method: POST
URL: http://localhost:3000/api/users
Headers: {
  "Connection": "keep-alive",
  "user-agent": "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Cypress/9.4.1 Chrome/94.0.4606.81 Electron/15.3.4 Safari/537.36",
  "accept": "*/*",
  "accept-encoding": "gzip, deflate",
  "content-type": "application/json",
  "content-length": 87
}
Body: {"name":"testname461442","lastName":"testname461442","email":"testname461442@gmai.com"}

-----------------------------------------------------------

The response we got was:

Status: 405 - Method Not Allowed
Headers: {
  "date": "Tue, 01 Feb 2022 23:00:14 GMT",
  "connection": "keep-alive",
  "keep-alive": "timeout=5",
  "transfer-encoding": "chunked"
}
Body: Method POST Not Allowed


https://on.cypress.io/request
      at http://localhost:3000/__cypress/runner/cypress_runner.js:160569:80
      at tryCatcher (http://localhost:3000/__cypress/runner/cypress_runner.js:13196:23)
      at Promise._settlePromiseFromHandler (http://localhost:3000/__cypress/runner/cypress_runner.js:11131:31)
      at Promise._settlePromise (http://localhost:3000/__cypress/runner/cypress_runner.js:11188:18)
      at Promise._settlePromise0 (http://localhost:3000/__cypress/runner/cypress_runner.js:11233:10)
      at Promise._settlePromises (http://localhost:3000/__cypress/runner/cypress_runner.js:11313:18)
      at _drainQueueStep (http://localhost:3000/__cypress/runner/cypress_runner.js:7903:12)
      at _drainQueue (http://localhost:3000/__cypress/runner/cypress_runner.js:7896:9)
      at Async.../../node_modules/bluebird/js/release/async.js.Async._drainQueues (http://localhost:3000/__cypress/runner/cypress_runner.js:7912:5)
      at Async.drainQueues (http://localhost:3000/__cypress/runner/cypress_runner.js:7782:14)
  From Your Spec Code:
      at Context.eval (http://localhost:3000/__cypress/tests?p=cypress/integration/1-my-tests/api/users.spec.js:116:10)

  11) Test de endpoints
       Endpoint get users:
     AssertionError: expected [] to have a length of 10 but got 0
      at Context.eval (http://localhost:3000/__cypress/tests?p=cypress/integration/1-my-tests/api/users.spec.js:128:37)




  (Results)

  ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
  │ Tests:        11                                                                               │
  │ Passing:      0                                                                                │
  │ Failing:      11                                                                               │
  │ Pending:      0                                                                                │
  │ Skipped:      0                                                                                │
  │ Screenshots:  11                                                                               │
  │ Video:        true                                                                             │
  │ Duration:     8 seconds                                                                        │
  │ Spec Ran:     1-my-tests/api/users.spec.js                                                     │
  └────────────────────────────────────────────────────────────────────────────────────────────────┘


  (Screenshots)

  -  /var/jenkins_home/workspace/jenkins_practica/cypress/screenshots/1-my-tests/api/     (1280x720)
     users.spec.js/Test de endpoints -- Endpoint user creation (failed).png                         
  -  /var/jenkins_home/workspace/jenkins_practica/cypress/screenshots/1-my-tests/api/     (1280x720)
     users.spec.js/Test de endpoints -- Endpoint user creation (failed) (1).png                     
  -  /var/jenkins_home/workspace/jenkins_practica/cypress/screenshots/1-my-tests/api/     (1280x720)
     users.spec.js/Test de endpoints -- Endpoint user creation (failed) (2).png                     
  -  /var/jenkins_home/workspace/jenkins_practica/cypress/screenshots/1-my-tests/api/     (1280x720)
     users.spec.js/Test de endpoints -- Endpoint user creation (failed) (3).png                     
  -  /var/jenkins_home/workspace/jenkins_practica/cypress/screenshots/1-my-tests/api/     (1280x720)
     users.spec.js/Test de endpoints -- Endpoint user creation (failed) (4).png                     
  -  /var/jenkins_home/workspace/jenkins_practica/cypress/screenshots/1-my-tests/api/     (1280x720)
     users.spec.js/Test de endpoints -- Endpoint user creation (failed) (5).png                     
  -  /var/jenkins_home/workspace/jenkins_practica/cypress/screenshots/1-my-tests/api/     (1280x720)
     users.spec.js/Test de endpoints -- Endpoint user creation (failed) (6).png                     
  -  /var/jenkins_home/workspace/jenkins_practica/cypress/screenshots/1-my-tests/api/     (1280x720)
     users.spec.js/Test de endpoints -- Endpoint user creation (failed) (7).png                     
  -  /var/jenkins_home/workspace/jenkins_practica/cypress/screenshots/1-my-tests/api/     (1280x720)
     users.spec.js/Test de endpoints -- Endpoint user creation (failed) (8).png                     
  -  /var/jenkins_home/workspace/jenkins_practica/cypress/screenshots/1-my-tests/api/     (1280x720)
     users.spec.js/Test de endpoints -- Endpoint user creation (failed) (9).png                     
  -  /var/jenkins_home/workspace/jenkins_practica/cypress/screenshots/1-my-tests/api/     (1280x720)
     users.spec.js/Test de endpoints -- Endpoint get users (failed).png                             


  (Video)

  -  Started processing:  Compressing to 32 CRF                                                     
  -  Finished processing: /var/jenkins_home/workspace/jenkins_practica/cypress/videos     (1 second)
                          /1-my-tests/api/users.spec.js.mp4                                         


────────────────────────────────────────────────────────────────────────────────────────────────────
                                                                                                    
  Running:  1-my-tests/pages/index.spec.js                                                  (2 of 2)
[12739:0201/230019.638338:ERROR:bus.cc(392)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")


  Test de endpoints
    ✓ Endpoint to check index title (1146ms)


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
  │ ✖  1-my-tests/api/users.spec.js             00:08       11        -       11        -        - │
  ├────────────────────────────────────────────────────────────────────────────────────────────────┤
  │ ✔  1-my-tests/pages/index.spec.js           00:01        1        1        -        -        - │
  └────────────────────────────────────────────────────────────────────────────────────────────────┘
    ✖  1 of 2 failed (50%)                      00:09       12        1       11        -        -  

npm ERR! code 11
npm ERR! path /var/jenkins_home/workspace/jenkins_practica
npm ERR! command failed
npm ERR! command sh -c cypress run

npm ERR! A complete log of this run can be found in:
npm ERR!     /var/jenkins_home/.npm/_logs/2022-02-01T23_00_24_141Z-debug.log
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
+ bash ./jenkinsScripts/badge.sh 11
[Pipeline] sh
+ sh ./jenkinsScripts/commit.sh admin Started by user admin
[detached HEAD 4293362] Pipeline ejecutada por admin. Motivo: Started by user admin [ci skip]
 1 file changed, 1 insertion(+), 1 deletion(-)
To https://github.com/jjpaya/gh_practica.git
   380a81a..4293362  HEAD -> jenkins
[Pipeline] }
[Pipeline] // script
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Deploy_to_Vercel)
[Pipeline] script
[Pipeline] {
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
Sending email to: ******@gmail.com
+ bash ./jenkinsScripts/bump.sh bug
To https://github.com/jjpaya/gh_practica.git
 * [new tag]         1.0.14 -> 1.0.14
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