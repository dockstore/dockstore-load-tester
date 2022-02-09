[![Build Status](https://travis-ci.org/dockstore/dockstore-load-tester.svg?branch=master)](https://travis-ci.org/dockstore/dockstore-load-tester.svg?branch=master)

# dockstore-load-tester
Dockstore Load/Performance/Stress Tester

### Requirements

You need Java and Maven installed.

To test, optionally, GitHub apps, you will need a GitHub app installation id, of a GitHub app installed for the Dockstore instance being
tested, as well as a curator token.

### Configuration

You can configure the following properties with `-D`, e.g., `-DtimeInMinutes=5`. Defaults are in the `pom.xml`.

* baseUrl -- the Dockstore webservice endpoint to run the tests against; defaults to `http://localhost:4200`
* timeInMinutes -- how many minutes to run the simulation
* terraRequestsRps -- the number of requests per second by Terra
* webSiteUsers -- the number of website users
* trsRequestsPerHour -- the number of requests to fetch TRS tools per hour
* githubNotificationsPerHour -- the number of GitHub app notifications per hour
* installationId -- a GitHub installation ID 
* curatorToken -- A Dockstore curator's token
* maxResponseTimeMs -- if any API call takes longer than this, simulation will fail; default is 10,000, which is probably too high
* successThreshold -- the percentage of calls that should pass; if less, the simulation fails; default is 95

Regarding the last two items:

1. The tests will still run to completion regardless; if there are failures, there will a message so indicating at the end.
2. At lower loads, the tests will typically all pass (TRS ones may time out on a local instance); failures start happening when the load 
becomes too high.

#### Simulation Scenarios

1. Terra Requests: Simulates a workflow running in Terra, that fetches the primary descriptor. The rate is controlled by the `terraRequestsRps` property, defaults to 8 per second. Fetches a WDL descriptor files that are specified in `data/workflows.csv`.
2. Terra Version: Fetches a descriptor's versions, currently controlled by `webSiteUsers` (a Terra workflow run fetches a descriptor's versions a couple of times)
3. Web site users: Simulates a non-authorized user going through the web site, home page, search, go to a workflow, download its zip. The number of users, controlled by the `webSiteUsers` property, is spread out over the duration of the run. It defaults to 6.
4. Trs : Simulates requests being made to fetch all TRS tools and then fetching a tool, using both TRS v1 and v2. And makes the calls Galaxy search uses. Controlled by `trsRequestsPerHour`. 
5. GitHub Notifications - Invokes the GitHub release API. Invokes them against the repositories in `data/githubRefresh.csv`. Note this scenario will only be run if `installationId` and `curatorToken` are both
set, otherwise it is skipped.

#### Curator token and Installation Id

The tests can invoke the `/workflows/github/release` endpoint, the one invoked indirectly invoked by GitHub Apps from
AWS API Gateway, to simulate GitHub App notifications.

### Running the tests

```bash
mvn clean test-compile gatling:test
```

To increase the number of web site users to 20 and decrease the run time to 1 minute:

```bash
mvn clean test-compile gatling:test -DwebSiteUsers=20 -DtimeInMinutes=1
```

#### Results

At the end of the run, the output location will be displayed, that you can open in a browser, e.g.,

```bash
Please open the following file: /Users/charlesoverbeck/git/dockstore/dockstore-load-tester/target/gatling/dockstorewebuser-20181108213044663/index.html
```

The directory with the index.html file also has a `simulation.log` file, which has the raw data, if you wish to look at it in a non-GUI
format.

### Comparing Results

Gatling report lets you compare runs. Get it from: https://maven-eu.nuxeo.org/nexus/#nexus-search;quick~gatling-report. Note that on Feb 8,
the site's certificate has expired, so if that's still an issue, build it from the GitHub [repo](https://github.com/nuxeo/gatling-report).

```bash
java -jar gatling-report-6.0-capsule-fat.jar target/gatling/dockstorewebuser-20181109062654032/simulation.log \
    target/gatling/dockstorewebuser-20181113210759185/simulation.log \
    -o newdirectory
```

This will generate a newdirectory/index.html file, which you can open in the browser to get a view like this ![nuxeo screenshot](nuxeo-screenshot.png).


## Tips

Figuring JSON paths can be tricky. I find [this site](https://jsonpath.herokuapp.com/) useful in interactively figuring out the
expression.

For debugging, look at the file `logback-test.xml`. Here you can choose between printing the logs of only failed or all HTTP requests to the console.

## Todo

1. Configurably set Gatling `.disableCaching` parameter.
   1. For simulating web users, I assume the caching is done
on a per-user basis, which is what we would want, as the browser would cache requests based on headers. Need to verify.
   2. For simulating API calls, we probably want to disable caching, as HTTP client libraries don't do that, AFAIK.
1. Make all inputs external, at least optionally, so that if you change a CSV file, you don't need to rebuild.
1. SearchPage only searches one term, author. Ideally would do more complex searches.
1. Add checks for things that take too long. This is done globally and is configurable, but should maybe add checks
for certain key APIs.
1. Figure out creating hosted tools test. Problem is that I cannot generate a unique name for the tools like I can for workflows.
1. A lot of endpoints are not tested. See Requests.scala -- all the paths that are commented out are not tested.
1. Current simulation, DockstoreWebUser.scala, more or less simulates the calls a web user would make by
visiting various Dockstore web pages. There are other simulations we should consider modeling
    1. Scripts or other programmatic access to the API
    1. Emulate how Broad UI might access Dockstore
    1. ??? 

