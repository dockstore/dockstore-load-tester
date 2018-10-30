package io.dockstore

import io.gatling.core.Predef._
import io.gatling.http.Predef._

object HostedWorkflows {

  def fetchRandomAndTogglePublish =
    exec(
      Requests.getUser("${token}")
        .check(status is 200)
        .check(jsonPath("$.id").saveAs("userId"))
    )

      .exec(
        Requests.getUserWorkflows("${userId}", "${token}")
          .check(status is 200)
          .check(jsonPath("$[?(@.mode == 'HOSTED')].id").findRandom.saveAs("id"))
      )

      .exec(
        Requests.getWorkflow("${id}", "${token}")
          .check(status is 200)
          .check(jsonPath("$.is_published").transform(p => p == false).saveAs("publish"))
      )

      .exec(
        Requests.publishOrUnpublish("${id}", "${token}")
          .check(status is 200)
      )

}
