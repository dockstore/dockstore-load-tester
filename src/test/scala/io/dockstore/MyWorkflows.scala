package io.dockstore

import io.dockstore.Requests.{Ga4gh2Beta, MetaData, User, Workflow}
import io.gatling.commons.util.TypeHelper
import io.gatling.core.Predef._
import io.gatling.http.Predef._

object MyWorkflows {

  val myWorkflows =
    exec(
      MetaData.getDescriptorLanguageList
        .check(status is 200)
    )
      .exec(
        User.getUser("${token}")
          .check(status is 200)
      )
      .exec(
        MetaData.getSourceControlList
          .check(status is 200)
      )
      .exec(
        User.getUser("${token}")
          .check(status is 200)
          .check(jsonPath("$.id").saveAs("userId"))
          .resources(
            User.getWorkflows("${userId}", "${token}")
              .check(status is 200)
              .check(jsonPath("$[0].id").saveAs("workflowId")),
            Workflow.getShared("${token}")
              .check(status is 200)
          )
      )
      .exec(
        Workflow.getWorkflow("${workflowId}", "${token}")
          .check(status is 200)
          .check(jsonPath("$.full_workflow_path").transform(path => Utils.encodeWorkflow(path)).saveAs("fullWorkflowPath"))
          .check(jsonPath("$.defaultVersion").saveAs("version"))
          .check(jsonPath("$.workflowVersions[0].name").saveAs("firstVersion"))
          // TODO: Should get versionId based on defaultVersion, if present
          .check(jsonPath("$.workflowVersions[0].id").saveAs("versionId"))
          .check(status is 200)
      )
      .exec(session => {
          // If default version is not set, grab the first version.
        val hasVersion = session("version").asOption[String].isDefined
        if (!hasVersion) session.set("version", session("firstVersion").as[String]) else session
      })

      .exec(
        Workflow.getTools("${workflowId}", "${versionId}", "${token}")
          .check(status in(200, 204))
          .resources(
            Workflow.getDag("${workflowId}", "${versionId}", "${token}")
              .check(status in(200, 204)),
            Workflow.getStarredUsers("${workflowId}")
              .check(status is 200),
            Ga4gh2Beta.getNflFiles("${fullWorkflowPath}", "${version}", "${token}")
              .check(status in(200, 204)),
            Ga4gh2Beta.getCwlFiles("${fullWorkflowPath}", "${version}", "${token}")
              .check(status in(200, 204)),
            Ga4gh2Beta.getWdlFiles("${fullWorkflowPath}", "${version}", "${token}")
              .check(status in(200, 204))

          )
      )
}
