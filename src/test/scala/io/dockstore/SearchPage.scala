package io.dockstore

import scala.concurrent.duration._

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.jdbc.Predef._

/**
  * Makes the API calls of a user going to the search page.
  *
  * <ol>
  *   <li>Gets the aggregations
  *   <li>Selects a random author
  *   <li>Queries for the random author
  * </ol>
  */
object SearchPage  {

  private val searchPath = "/api/ga4gh/v2/extended/tools/entry/_search"

  val search = exec(
			Requests.getMetadata
				.check(status is 200)
		)
    .exec(
      http("Get Tools")
        .post(searchPath)
        .body(RawFileBody("bodies/search/tools.json")).asJson
        .check(status is 200)
    )
    .exec(
      http("Get Workflows")
        .post(searchPath)
        .body(RawFileBody("bodies/search/workflows.json")).asJson
        .check(status is 200)
    )
    .exec(
      http("Get Terms and Counts")
        .post(searchPath)
        .body(RawFileBody("bodies/search/allAggregations.json")).asJson
        .check(status is 200)
        .check(jsonPath("$.aggregations.author.buckets[*].key").findRandom.saveAs("author"))
    )
    .exec(
      http("Search for an author 1")
        .post(searchPath)
        .body(ElFileBody("bodies/search/searchAuthor1.json")).asJson
        .check(status is 200)
    )
    .exec(
      http("Search for an author 2")
        .post(searchPath)
        .body(ElFileBody("bodies/search/searchAuthor2.json")).asJson
        .check(status is 200)
    )
    .exec(
      http("Search for an author 3")
        .post(searchPath)
        .body(ElFileBody("bodies/search/searchAuthor3.json")).asJson
        .check(status is 200)
    )
    .exec(
      http("Search for an author 4")
        .post(searchPath)
        .body(ElFileBody("bodies/search/searchAuthor4.json")).asJson
        .check(status is 200)
    )
}