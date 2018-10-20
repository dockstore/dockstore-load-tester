package io.dockstore

import io.gatling.commons.util.TypeHelper
import io.gatling.core.Predef._
import io.gatling.http.Predef._

/**
  * Makes API calls of user going to workflows page by:
  *
  * <ol>
  *   <li>Getting the list of workflows
  *   <li>Searching for a pseudo-random set of workflows (terms searched for are in data/workflowSearchTerms.csv)
  *   <li>Drilling into a random workflow from the queried workflows from the previous step
  * </ol>
  */
object WorkflowsPageSearch {

  private val searchTermFeeder = csv("data/workflowSearchTerms.csv").random

  val search = feed(searchTermFeeder).exec(http("Workflows List Page")
    .get("/workflows/published")
    .queryParam("offset", 0)
    .queryParam("limit", 10)
    .queryParam("filter", "")
    .queryParam("sortCol", "stars")
    .queryParam("sortOrder", "desc")
    .check(status is 200))
    .pause(1)
    .exec(http("Workflows search for term")
      .get("/workflows/published")
      .queryParam("offset", 0)
      .queryParam("limit", 10)
      .queryParam("filter", "${term}")
      .queryParam("sortCol", "stars")
      .queryParam("sortOrder", "desc")
      .check(status is 200)
      .check(jsonPath("$[*].id").findRandom.saveAs("id"))
      .check(jsonPath("$[?(@.id == ${id})].full_workflow_path").transform(path => Utils.encode(path)).saveAs("repo"))
      .check(jsonPath("$[?(@.id == ${id})].full_workflow_path").transform(path => Utils.encodeWorkflow(path)).saveAs("fullWorkflowPath"))
      .check(jsonPath("$[?(@.id == ${id})].descriptorType").saveAs("descriptorType"))
    )
    .pause(5)

    .exec(http("Published Worfklow")
      .get("/workflows/path/workflow/${repo}/published")
      .check(jsonPath("$.defaultVersion").saveAs("version"))
      .check(jsonPath("$.workflowVersions[0].name").saveAs("firstVersion"))
      .check(status is 200)
    )

    .exec(session => {
      // Sometimes default version is not set; grab the first version in that case.
      val hasVersion = (session("version").validate[String] != TypeHelper.NullValueFailure)
      if (hasVersion) session else session.set("version", session("firstVersion").as[String])
    })

    .exec(http("Load Random Workflow")
      .get("/metadata/descriptorLanguageList")
      .resources(
        http("Get starred users")
          .get("/workflows/${id}/starredUsers")
          .check(status is 200),
        http("Get NFL files")
          .get("/api/ga4gh/v2/tools/${fullWorkflowPath}/versions/${version}/NFL/files")
          .check(status in(200, 204)),
        http("Get CWL files")
          .get("/api/ga4gh/v2/tools/${fullWorkflowPath}/versions/${version}/CWL/files")
          .check(status in(200, 204)),
        http("Get WDL files")
          .get("/api/ga4gh/v2/tools/${fullWorkflowPath}/versions/${version}/WDL/files")
          .check(status in(200, 204))
      ))
    .doIfEquals("${descriptorType}", "wdl") {
      exec(http("Get secondaryWdl to check imports")
        .get("/workflows/${id}/secondaryWdl?tag=${version}")
      )
    }
}
