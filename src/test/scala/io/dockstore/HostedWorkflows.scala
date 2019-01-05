package io.dockstore

import io.dockstore.Requests.{User, Workflow}
import io.gatling.core.Predef._
import io.gatling.http.Predef._

object HostedWorkflows {

  def fetchRandomAndTogglePublish =
    exec(
      User.getUser("${token}")
        .check(status is 200)
        .check(jsonPath("$.id").saveAs("userId"))
    )

      .exec(
        User.getWorkflows("${userId}", "${token}")
          .check(status is 200)
          .check(jsonPath("$[?(@.mode == 'HOSTED')].id").findRandom.saveAs("id"))
      )

      .exec(
        Workflow.getWorkflow("${id}", "${token}")
          .check(status is 200)
          .check(jsonPath("$.is_published").transform(p => p == false).saveAs("publish"))
      )

      .exec(
        Workflow.publishOrUnpublish("${id}", "${token}")
          .check(status is 200)
      )
}
