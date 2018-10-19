package io.dockstore

import scala.concurrent.duration._

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.jdbc.Predef._

object SearchPage  {

  private val searchPath = "/api/ga4gh/v2/extended/tools/entry/_search"

  val search = exec(
			http("Get Metadata")
				.get("/api/ga4gh/v2/metadata")
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


//	val scn = scenario("SearchPage2")
//		.exec(http("request_0")
//            http("request_5")
//			.post("/api/ga4gh/v2/extended/tools/entry/_search")
//			.headers(headers_4)
//			.body(RawFileBody("SearchPage2_0005_request.txt")),
//            http("request_6")
//            http("request_7")
//			.post("/api/ga4gh/v2/extended/tools/entry/_search")
//			.headers(headers_4)
//			.body(RawFileBody("SearchPage2_0007_request.txt")),
//            http("request_8")
//			.post("/api/ga4gh/v2/extended/tools/entry/_search")
//			.headers(headers_4)
//			.body(RawFileBody("SearchPage2_0008_request.txt")),
//            http("request_9")
//			.post("/api/ga4gh/v2/extended/tools/entry/_search")
//			.headers(headers_4)
//			.body(RawFileBody("allAggregations.json"))))
//		.pause(19)
//		.exec(http("request_10")
//			.post("/api/ga4gh/v2/extended/tools/entry/_search")
//			.headers(headers_4)
//			.body(RawFileBody("SearchPage2_0010_request.txt"))
//			.resources(http("request_11")
//			.post("/api/ga4gh/v2/extended/tools/entry/_search")
//			.headers(headers_4)
//			.body(RawFileBody("SearchPage2_0011_request.txt")),
//            http("request_12")
//			.post("/api/ga4gh/v2/extended/tools/entry/_search")
//			.headers(headers_4)
//			.body(RawFileBody("SearchPage2_0012_request.txt")),
//            http("request_13")
//			.post("/api/ga4gh/v2/extended/tools/entry/_search")
//			.headers(headers_4)
//			.body(RawFileBody("SearchPage2_0013_request.txt"))))
//		.pause(2)
//		.exec(http("request_14")
//			.post("/api/ga4gh/v2/extended/tools/entry/_search")
//			.headers(headers_4)
//			.body(RawFileBody("SearchPage2_0014_request.txt"))
//			.resources(http("request_15")
//			.post("/api/ga4gh/v2/extended/tools/entry/_search")
//			.headers(headers_4)
//			.body(RawFileBody("SearchPage2_0015_request.txt")),
//            http("request_16")
//			.post("/api/ga4gh/v2/extended/tools/entry/_search")
//			.headers(headers_4)
//			.body(RawFileBody("SearchPage2_0016_request.txt")),
//            http("request_17")
//			.post("/api/ga4gh/v2/extended/tools/entry/_search")
//			.headers(headers_4)
//			.body(RawFileBody("SearchPage2_0017_request.txt"))))
//		.pause(32)
//		.exec(http("request_18")
//			.post("/api/ga4gh/v2/extended/tools/entry/_search")
//			.headers(headers_4)
//			.body(RawFileBody("SearchPage2_0018_request.txt"))
//			.resources(http("request_19")
//			.post("/api/ga4gh/v2/extended/tools/entry/_search")
//			.headers(headers_4)
//			.body(RawFileBody("SearchPage2_0019_request.txt")),
//            http("request_20")
//			.post("/api/ga4gh/v2/extended/tools/entry/_search")
//			.headers(headers_4)
//			.body(RawFileBody("SearchPage2_0020_request.txt")),
//            http("request_21")
//			.post("/api/ga4gh/v2/extended/tools/entry/_search")
//			.headers(headers_4)
//			.body(RawFileBody("SearchPage2_0021_request.txt"))))
//
//	setUp(scn.inject(atOnceUsers(1))).protocols(httpProtocol)
//}