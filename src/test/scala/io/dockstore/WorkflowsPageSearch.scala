package io.dockstore

import io.dockstore.Requests.{Ga4gh2, MetaData, User, Workflow}
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
  * <li>Download the workflow as a zip
  * </ol>
  */
object WorkflowsPageSearch {

  private val searchTermFeeder = csv("data/workflowSearchTerms.csv").random

  val search = feed(searchTermFeeder).exec(
    Workflow.getPublished()
      .check(status is 200))
    .pause(1)
    .exec(
      Workflow.getPublished("${term}")
        .check(status is 200)
        .check(jsonPath("$[*].id").findRandom.saveAs("id"))
        .check(jsonPath("$[?(@.id == ${id})].full_workflow_path").transform(path => Utils.encode(path)).saveAs("repo"))
        .check(jsonPath("$[?(@.id == ${id})].full_workflow_path").transform(path => Utils.encodeWorkflow(path)).saveAs("fullWorkflowPath"))
        .check(jsonPath("$[?(@.id == ${id})].descriptorType").saveAs("descriptorType"))
    )
    .pause(5)

    .exec(
      Workflow.getPublishedWorkflow("${repo}")
        .check(jsonPath("$.defaultVersion").saveAs("version"))
        .check(jsonPath("$.workflowVersions[0].name").saveAs("firstVersion"))
        .check(jsonPath("$.workflowVersions[0].id").saveAs("versionId"))
        .check(status is 200)
    )

    .exec(session => {
      // Sometimes default version is not set; grab the first version in that case.
      val hasVersion = (session("version").validate[String] != TypeHelper.NullValueFailure)
      if (hasVersion) session else session.set("version", session("firstVersion").as[String])
    })

    .exec(
      MetaData.getDescriptorLanguageList
        .resources(
          Ga4gh2.getNflFiles("${fullWorkflowPath}", "${version}")
            .check(status in(200, 204)),
          Ga4gh2.getCwlFiles("${fullWorkflowPath}", "${version}")
            .check(status in(200, 204)),
          Ga4gh2.getWdlFiles("${fullWorkflowPath}", "${version}")
            .check(status in(200, 204))
        ))
    .doIfEquals("${descriptorType}", "WDL") {
      exec(
        Workflow.getSecondaryWdl("${id}", "${version}")
      )
    }

    .exec(
      Workflow.downloadWorkflowAsZip("${id}", "${versionId}")
        .check(status in(200, 204)) // Some versions have no source files
    )

  doIf(session => session("token").validate[String] != TypeHelper.NullValueFailure) {
    exec(
      User.getUser("${token}")
        .check(jsonPath("$.id").saveAs("userId"))
    )

      .exec(
        Workflow.getStarredUsers("${id}")
          .check(status is 200)
          .check(jsonPath("$[?(@.id == ${userId})].id").transformOption(id => {
            id.orElse(Some(""))
          }).saveAs("starredId"))
      )

      .doIfEqualsOrElse("${starredId}", "") {
        exec(
          Workflow.star("${id}", "${token}")
            .check(status is 204)
        )
      } {
        exec(
          Workflow.unstar("${id}", "${token}")
            .check(status is 204)
        )
      }
  }
}
