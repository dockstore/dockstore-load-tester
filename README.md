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

```bash
mvn clean test-compile gatling:test
```

## Tips

Figuring JSON paths can be tricky. I find [this site](http://jsonpath.herokuapp.com/) useful in interactively figuring out the
expression.

## Todo

1. Setting up tokens is too manual
2. The scenario that gets run should be configurable.
3. The endpoint of the backend API should be configurable.
4. The number of users and when/how they get injected should be configurable.
5. Would be nice to randomize the scenario. Maybe run multiple simulations at once? Needs research.
6. Configurably set Gatling `.disableCaching` parameter.
   1. For simulating web users, I assume the caching is done
on a per-user basis, which is what we would want, as the browser would cache requests based on headers. Need to verify.
   2. For simulating API calls, we probably want to disable caching, as HTTP client libraries don't do that, AFAIK.
7. SearchPage only searches author; only searches one term
8. Investigate using something like https://github.com/nuxeo/gatling-report to compare results
9. Doesn't test integration with external repos, e.g., refreshing from GitHub

