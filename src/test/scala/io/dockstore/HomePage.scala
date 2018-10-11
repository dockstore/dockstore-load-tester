package io.dockstore

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.jdbc.Predef._

object HomePage {

  val open = exec(http("Home Page MetaData")
    .get("/api/ga4gh/v2/metadata")
    .check(status is 200))
    .exec(http("Home Page Tools")
      .get("/containers/published")
      .queryParam("offset", 0)
      .queryParam("limit", 10)
      .queryParam("filter", "")
      .queryParam("sortCol", "stars")
      .queryParam("sortOrder", "desc")
      .check(status is 200)
    )
}
