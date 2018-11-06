package io.dockstore

import io.dockstore.Requests.{Ga4gh2, MetaData, User, Workflow}
import io.gatling.core.Predef._
import io.gatling.http.Predef._

object MyWorkflows {

  val myWorkflows = exec(
    MetaData.getDescriptorLanguageList
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
        .check(jsonPath("$.defaultVersion").saveAs("defaultVersion"))
        // TODO: This will not work if defaultVersion is not set, which it isn't always
        .check(jsonPath("$.workflowVersions[?(@.name == '${defaultVersion}')].id").saveAs("versionId"))
        .resources(
          Workflow.getTools("${workflowId}", "${versionId}", "${token}")
            .check(status in(200, 204)),
          Workflow.getDag("${workflowId}", "${versionId}", "${token}")
            .check(status in(200, 204)),
          Workflow.getStarredUsers("${workflowId}")
            .check(status is 200),
          Ga4gh2.getNflFiles("${fullWorkflowPath}", "${defaultVersion}")
            .check(status in(200, 204)),
          Ga4gh2.getCwlFiles("${fullWorkflowPath}", "${defaultVersion}")
            .check(status in(200, 204)),
          Ga4gh2.getWdlFiles("${fullWorkflowPath}", "${defaultVersion}")
            .check(status in(200, 204))

        )
    )
}
