package io.dockstore

import java.net.URLEncoder

import io.gatling.core.Predef._
import io.gatling.core.session
import io.gatling.http.Predef._

object WorkflowsPageSearch {

  val search = exec(http("Workflows List Page")
    .get("/workflows/published")
    .queryParam("offset", 0)
    .queryParam("limit", 10)
    .queryParam("filter", "")
    .queryParam("sortCol", "stars")
    .queryParam("sortOrder", "desc")
    .check(status is 200))
    .pause(1)
    .exec(http("Search for TopMed")
      .get("/workflows/published")
      .queryParam("offset", 0)
      .queryParam("limit", 10)
      .queryParam("filter", "topmed")
      .queryParam("sortCol", "stars")
      .queryParam("sortOrder", "desc")
      .check(status is 200)
      .check(jsonPath("$[*].id").findRandom.saveAs("id"))
      .check(jsonPath("$[*].full_workflow_path").findRandom.saveAs("fullWorkflowPath")))
    .exec(session => {
      val map = session("row")
      println(map)
      println(session)
    session
      val unescapedPath = session("fullWorkflowPath").as[String]
      session.set("repo", URLEncoder.encode(unescapedPath))
        .set("fullWorkflowPath", (URLEncoder.encode("#/workflow/" + unescapedPath)))
    })
    .pause(5)
    .exec(http("Published Worfklow")
      .get("/workflows/path/workflow/${repo}/published")
      .check(jsonPath("$.defaultVersion").saveAs("version")))
    .exec(http("Load TopMed Workflow")
      .get("/metadata/descriptorLanguageList")
      .resources(
        http("Get starred users")
          .get("/workflows/${id}/starredUsers")
          .check(status is 200),
        http("Get NFL files")
          .get("/api/ga4gh/v2/tools/${fullWorkflowPath}/versions/${version}/NFL/files")
          .check(status in(200, 404)),
        http("Get CWL files")
          .get("/api/ga4gh/v2/tools/${fullWorkflowPath}/versions/${version}/CWL/files")
          .check(status in(200, 404)),
        http("Get WDL files")
          .get("/api/ga4gh/v2/tools/${fullWorkflowPath}/versions/${version}/WDL/files")
          .check(status in(200, 404)),
        http("Get tag")
          .get("/workflows/${id}/secondaryWdl?tag=${version}")
      )
    )


  //    .exec(http("request_6")
  //      .get("/metadata/descriptorLanguageList")
  //      .headers(headers_0)
  //      .resources(http("request_7")
  //        http("request_11")
  //          .get("/workflows/5851/wdl?tag=1.17.0")
  //          .headers(headers_0),
  //        http("request_12")
  //          .get("/api/ga4gh/v2/tools/%23workflow%2Fgithub.com%2FDataBiosphere%2Ftopmed-workflows%2FTopMed_Variant_Caller_wdl_checker/versions/1.17.0/WDL/files")
  //          .headers(headers_0),
  //        http("request_13")
  //          .get("/api/ga4gh/v2/tools/%23workflow%2Fgithub.com%2FDataBiosphere%2Ftopmed-workflows%2FTopMed_Variant_Caller_wdl_checker/versions/1.17.0/wdl/descriptor/topmed_freeze3_calling_checker.json")
  //          .headers(headers_0),
  //        http("request_14")
  //          .get("/workflows/5851/secondaryWdl?tag=1.17.0")
  //          .headers(headers_0),
  //        http("request_15")
  //          .get("/api/ga4gh/v2/tools/%23workflow%2Fgithub.com%2FDataBiosphere%2Ftopmed-workflows%2FTopMed_Variant_Caller_wdl_checker/versions/1.17.0/wdl/descriptor/topmed_freeze3_calling_checker.wdl")
  //          .headers(headers_0),
  //        http("request_16")
  //          .get("/workflows/5851/tools/14657")
  //          .headers(headers_0)
  //          .check(status.is(500))))

}
