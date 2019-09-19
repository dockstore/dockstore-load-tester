[![Build Status](https://travis-ci.org/dockstore/dockstore-load-tester.svg?branch=master)](https://travis-ci.org/dockstore/dockstore-load-tester.svg?branch=master)

# dockstore-load-tester
Dockstore Load/Performance/Stress Tester

## Running the tests

### Setup

#### Tokens and Users

For authenticated endpoints, the tests use tokens that come from the file `data/dummyUsersAndTokens.csv`.
Those users and tokens need to be in the Dockstore database. A SQL file, `dummyusers.sql`, will create
the users and tokens. Direct access to the Dockstore database is required. Assuming Postgres is running in a Docker
container named `postgres1`, execute the following:

```
docker exec -i postgres1 psql webservice_test -U postgres < dummyusers.sql
```

Note: the `dummyusers.sql` was generated from `data/dummyUsersAndTokens.csv` 
by `src/test/scala/io/dockstore/tools/UserGenerator.scala`; if you need to tweak the SQL you
should modify the generator.

### Run

You can configure the following properties with `-D`, e.g., `-DauthUsers=50`. Defaults are in the `pom.xml`.

* authUsers -- the number of authenticated users to simulate; defaults to 50
* anonUsers -- the number of anonymous users to simulate; defaults to 50; only applies if scenario, below, is `Everything`
* atOnce -- true if all users should hit at once, or if they should ramp up over time; defaults to false
* rampMinutes -- if `atOnce` is not true, the number of minutes the specified number of users will be phased in; defaults to 5
* baseUrl -- the Dockstore webservice endpoint to run the tests against; defaults to `http://localhost:8080`
* scenario -- the name of the scenario to run; see DockstoreWebUser.scala for all available; defaults to `Everything`, which runs (almost) everything
* maxResponseTimeMs -- if any API call takes longer than this, simulation will fail; default is 10,000, which is probably too high
* successThreshold -- the percentage of calls that should pass; if less, the simulation fails; default is 95
* percentToPublish -- the percentage of workflows created in the `HostedWorkflowCrud` scenario that will be published; the default is 25

Regarding the last two items, the tests will still run to completion; if there is failure, there will a message so indicating at the end.

The default values are defined in the `<properties>` section of the pom.xml.

```bash
mvn clean test-compile gatling:test
```

#### Results

At the end of the run, the output location will be displayed, that you can open in a browser, e.g.,

```bash
Please open the following file: /Users/charlesoverbeck/git/dockstore/dockstore-load-tester/target/gatling/dockstorewebuser-20181108213044663/index.html
```

The directory with the index.html file also has a `simulation.log` file, which has the raw data, if you wish to look at it in a non-GUI
format.

### Comparing Results

The GitHub release has a gatling-report-3.0 JAR that you can use to compare different runs.

```bash
java -jar gatling-report-3.0-SNAPSHOT-capsule-fat.jar target/gatling/dockstorewebuser-20181109062654032/simulation.log \
    target/gatling/dockstorewebuser-20181113210759185/simulation.log \
    -o newdirectory
```

This will generate a newdirectory/index.html file, which you can open in the browser to get a view like this ![nuxeo screenshot](nuxeo-screenshot.png).

#### Where the JAR came from, and why

The JAR is built locally from 
[https://github.com/coverbeck/gatling-report/tree/gatling_3_0_support](https://github.com/coverbeck/gatling-report/tree/gatling_3_0_support),
a fork of [https://github.com/nuxeo/gatling-report](https://github.com/nuxeo/gatling-report). It is forked because
the nuxeo code currently does not work with Gatling 3.0 simulation.log files. A [PR](https://github.com/nuxeo/gatling-report/pull/14) has
been submitted to fix this, but until it is merged and an "official" release can be downloaded, we are attaching the binary to the
GitHub Release.

Alternatively, you can clone [https://github.com/coverbeck/gatling-report](https://github.com/coverbeck/gatling-report), checkout
the gatling_3_0_support branch, run `mvn clean package`, and use the generated JAR. 

## Tips

Figuring JSON paths can be tricky. I find [this site](http://jsonpath.herokuapp.com/) useful in interactively figuring out the
expression.

For debugging, look at the file `logback-test.xml`. Here you can choose between printing the logs of only failed or all HTTP requests to the console.

## Todo

1. Configurably set Gatling `.disableCaching` parameter.
   1. For simulating web users, I assume the caching is done
on a per-user basis, which is what we would want, as the browser would cache requests based on headers. Need to verify.
   2. For simulating API calls, we probably want to disable caching, as HTTP client libraries don't do that, AFAIK.
1. SearchPage only searches one term, author. Ideally would do more complex searches.
1. Doesn't test integration with external repos, e.g., refreshing from GitHub
1. Add checks for things that take too long. This is done globally and is configurable, but should maybe add checks
for certain key APIs.
1. Figure out creating hosted tools test. Problem is that I cannot generate a unique name for the tools like I can for workflows.
1. A lot of endpoints are not tested. See Requests.scala -- all the paths that are commented out are not tested.
1. Current simulation, DockstoreWebUser.scala, more or less simulates the calls a web user would make by
visiting various Dockstore web pages. There are other simulations we should consider modeling
    1. Scripts or other programmatic access to the API
    1. Emulate how Broad UI might access Dockstore
    1. ??? 

