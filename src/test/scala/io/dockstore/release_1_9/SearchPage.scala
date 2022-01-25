package io.dockstore.release_1_9

import io.dockstore.Requests._
import io.gatling.core.Predef._
import io.gatling.http.Predef._

/**
  * Simulates a Dockstore user visiting the search page and performing one search request
  *
  */
object SearchPage {

  private val searchPath = "/api/api/ga4gh/v2/extended/tools/entry/_search"

  val search = {
    val r = scala.util.Random
    val searchIndex = r.nextInt(3)
    val searchTermFiles = Array("searchPcawg", "searchGatk", "searchRandomTerm")

    // Search page does 7 calls on page load
    exec(
      http("Load Search Page Call 1")
        .post(searchPath)
        .body(RawFileBody("bodies/search/loadSearchPageCall1-1.9.0.json")).asJson
        .check(status is 200)
        .check(jsonPath("$['aggregations']['labels.value.keyword']['buckets'][*]['key']").findRandom.saveAs("searchTerm")
        )
    )
      .exec(
      http("Load Search Page Call 2")
        .post(searchPath)
        .body(RawFileBody("bodies/search/loadSearchPageCall2-1.9.0.json")).asJson
        .check(status is 200)
    )
      .exec(
      http("Load Search Page Call 3")
        .post(searchPath)
        .body(RawFileBody("bodies/search/loadSearchPageCall3-1.9.0.json")).asJson
        .check(status is 200)
    )
      .exec(
      http("Load Search Page Call 4")
        .post(searchPath)
        .body(RawFileBody("bodies/search/loadSearchPageCall4-1.9.0.json")).asJson
        .check(status is 200)
    )
      .exec(
      http("Load Search Page Call 5")
        .post(searchPath)
        .body(RawFileBody("bodies/search/loadSearchPageCall5-1.9.0.json")).asJson
        .check(status is 200)
    )
      .exec(
      http("Load Search Page Call 6")
        .post(searchPath)
        .body(RawFileBody("bodies/search/loadSearchPageCall6-1.9.0.json")).asJson
        .check(status is 200)
    )
      .exec(
      http("Load Search Page Call 7")
        .post(searchPath)
        .body(RawFileBody("bodies/search/loadSearchPageCall7-1.9.0.json")).asJson
        .check(status is 200)
    )
      .pause(2)
      .exec(
      http("Search for random term Call 1")
        .post(searchPath)
        .body(ElFileBody("bodies/search/performSearches-1.9.0/searchRandomTerm1.json")).asJson
        .check(status is 200)
    )
      .exec(
      http("Search for random term Call 2")
        .post(searchPath)
        .body(ElFileBody("bodies/search/performSearches-1.9.0/searchRandomTerm2.json")).asJson
        .check(status is 200)
    )
      .exec(
      http("Search for random term Call 3")
        .post(searchPath)
        .body(ElFileBody("bodies/search/performSearches-1.9.0/searchRandomTerm3.json")).asJson
        .check(status is 200)
    )
  }

}
