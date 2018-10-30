package io.dockstore

import io.gatling.commons.util.TypeHelper
import io.gatling.core.Predef._
import io.gatling.http.Predef._

/**
  * Makes API calls of user going to workflows page by:
  *
  * <ol>
  * <li>Getting the list of workflows
  * <li>Searching for a pseudo-random set of workflows (terms searched for are in data/workflowSearchTerms.csv)
  * <li>Drilling into a random workflow from the queried workflows from the previous step
  * </ol>
  */
object WorkflowsPageSearch {

  private val searchTermFeeder = csv("data/workflowSearchTerms.csv").random

  val search = feed(searchTermFeeder).exec(
    Requests.getPublishedWorkflows()
      .check(status is 200))
    .pause(1)
    .exec(
      Requests.getPublishedWorkflows("${term}")
        .check(status is 200)
        .check(jsonPath("$[*].id").findRandom.saveAs("id"))
        .check(jsonPath("$[?(@.id == ${id})].full_workflow_path").transform(path => Utils.encode(path)).saveAs("repo"))
        .check(jsonPath("$[?(@.id == ${id})].full_workflow_path").transform(path => Utils.encodeWorkflow(path)).saveAs("fullWorkflowPath"))
        .check(jsonPath("$[?(@.id == ${id})].descriptorType").saveAs("descriptorType"))
    )
    .pause(5)

    .exec(
      Requests.getPublishedWorkflow("${repo}")
        .check(jsonPath("$.defaultVersion").saveAs("version"))
        .check(jsonPath("$.workflowVersions[0].name").saveAs("firstVersion"))
        .check(status is 200)
    )

    .exec(session => {
      // Sometimes default version is not set; grab the first version in that case.
      val hasVersion = (session("version").validate[String] != TypeHelper.NullValueFailure)
      if (hasVersion) session else session.set("version", session("firstVersion").as[String])
    })

    .exec(
      Requests.getDescriptorLanguageList
        .resources(
          Requests.getWorkflowStarredUsers("${id}")
            .check(status is 200),
          Requests.getNflFiles("${fullWorkflowPath}", "${version}")
            .check(status in(200, 204)),
          Requests.getCwlFiles("${fullWorkflowPath}", "${version}")
            .check(status in(200, 204)),
          Requests.getWdlFiles("${fullWorkflowPath}", "${version}")
            .check(status in(200, 204))
        ))
    .doIfEquals("${descriptorType}", "wdl") {
      exec(
        Requests.getSecondaryWdl("${id}", "${version}")
      )
    }
}
