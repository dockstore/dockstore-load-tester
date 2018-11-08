# dockstore-load-tester
Dockstore Load/Performance/Stress Tester

## Running the tests

### Setup

#### Tokens
In `io.dockstore.DockstoreSimulation`, tokens are randomly fed in so that requests
are made from different users. The tokens are read from `data/tokens.csv`. For both security
reasons and because different instances of Dockstore will have different token values,
no token values are checked into `tokens.csv`.

The `tokens.csv` value should have at least one token, and can have as many tokens as you
wish. The Gatling "feeder" randomly extracts a token for each simulated user and
makes if available. Because the token is randomly selected and because there might
be more simulated users than tokens, the same token can get inserted more than once. If
you want to simulate more unique users, add more tokens.

Update `data/tokens.csv`, adding **at least one** Dockstore token. Each token
should be a valid token for the Dockstore endpoint you are hitting. Each token should
be on its own line. Make sure to leave the existing title line `token`, as that is the
variable name that tests will use to access the randomly injected token. Do not check changes
to the tokens.csv file for the reasons discussed in the first paragraph.
```csv
token
4b9f337371353f3919dbed3d1b007f0ff257d2e9d30f333f9954f2ff3fd3354b
2b9f337371353f3919daaa3d1b007f0ff257d2e9d30f333f9954f2ff3fd335c3
1b9f337371353f3919dbbb3d1b007f0ff257d2e9d30f333f9954f2ff3fd3355d
```


#### Endpoints

`io.dockstore.HttpProtocols` has various Dockstore endpoints defined.

### Run

You can configure the following properties with `-D`, e.g., `-Dusers=50`:

* users -- the number of users to simulate; defaults to 20
* atOnce -- true if all users should hit at once, or if they should ramp up over time; defaults to true
* rampMinutes -- if `atOnce` is not true, the number of minutes the specified number of users will be phased in
* baseUrl -- the Dockstore webservice endpoint to run the tests against; defaults to `http://localhost:8080`
* scenario -- the name of the scenario to run; see DockstoreWebUser.scala for all available; defaults to `Everything`, which runs (almost) everything
* maxResponseTimeMs -- if any API call takes longer than this, simulation will fail; default is 10,000, which is probably too low
* successThreshold -- the precentage of calls that should pass; if less, the simulation fails; default is 95

Regarding the last two items, the tests will still run to completion; there will 

The default values are defined in the `<properties>` section of the pom.xml.
```bash
mvn clean test-compile gatling:test
```



## Tips

Figuring JSON paths can be tricky. I find [this site](http://jsonpath.herokuapp.com/) useful in interactively figuring out the
expression.

## Todo

1. Configurably set Gatling `.disableCaching` parameter.
   1. For simulating web users, I assume the caching is done
on a per-user basis, which is what we would want, as the browser would cache requests based on headers. Need to verify.
   2. For simulating API calls, we probably want to disable caching, as HTTP client libraries don't do that, AFAIK.
1. SearchPage only searches one term, author. Ideally would do more complex searches.
1. Investigate using something like https://github.com/nuxeo/gatling-report to compare results
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

