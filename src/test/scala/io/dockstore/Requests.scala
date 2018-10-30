package io.dockstore

import io.gatling.core.Predef._
import io.gatling.http.Predef._

object Requests {

  def authHeader(token: String) = {
    Map("Authorization" -> s"Bearer ${token}")
  }

  def getUser(token: String) = http("Get User")
    .get("/users/user")
    .headers(authHeader(token))

  def getUserWorkflows(userId: String, token: String) = {
    http("Get user's workflows")
      .get(s"/users/${userId}/workflows")
      .headers(authHeader(token))
  }

  def getWorkflow(workflowId: String, token: String) = {
    http("Get workflow")
      .get(s"/workflows/${workflowId}")
      .headers(authHeader(token))
  }

  def publishOrUnpublish(workflowId: String, token: String) = {
    http("Publish or Unpublish")
      .post(s"/workflows/${workflowId}/publish")
      .headers(authHeader(token))
      .body(ElFileBody("bodies/hosted/PublishBody.json")).asJson
  }

}
