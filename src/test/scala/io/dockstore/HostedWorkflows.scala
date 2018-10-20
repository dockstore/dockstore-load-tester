package io.dockstore

import io.gatling.core.Predef._
import io.gatling.http.Predef._

object HostedWorkflows {

  def fetchRandomAndTogglePublish =
    exec(
      http("Get user")
        .get("/users/user")
        .header("Authorization", "Bearer ${token}")
        .check(status is 200)
        .check(jsonPath("$.id").saveAs("userId"))
    )

      .exec(
        http("Get user's workflows")
          .get("/users/${userId}/workflows")
          .header("Authorization", "Bearer ${token}")
          .check(status is 200)
          .check(jsonPath("$[?(@.mode == 'HOSTED')].id").findRandom.saveAs("id"))
      )

      .exec(
        http("Fetch workflow")
          .get("/workflows/${id}")
          .header("Authorization", "Bearer ${token}")
          .check(status is 200)
          .check(jsonPath("$.is_published").transform(p => p == false).saveAs("publish"))
      )

    .exec(
      http("Publish or Unpublish")
        .post("/workflows/${id}/publish")
        .header("Authorization", "Bearer ${token}")
        .body(ElFileBody("bodies/hosted/PublishBody.json")).asJson
        .check(status is 200)
    )

}
