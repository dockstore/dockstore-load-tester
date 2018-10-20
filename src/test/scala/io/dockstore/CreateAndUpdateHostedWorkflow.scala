package io.dockstore

import io.gatling.core.Predef._
import io.gatling.http.Predef._

import java.util.UUID.randomUUID

/**
  * <ol>
  * <li>Creates a hosted workflow
  * <li>Adds a file to it
  * <li>Saves a new revision
  * </ol>
  */
object CreateAndUpdateHostedWorkflow {

  private val workflowNameFeeder = Iterator.continually(Map("workflowName" -> randomUUID().toString))

  def create =
    feed(workflowNameFeeder)
      .exec(http("Create Hosted Workflow")
        .post("/workflows/hostedEntry")
        .queryParam("name", "${workflowName}")
        .queryParam("descriptorType", "wdl")
        .header("Authorization", "Bearer ${token}")
        .check(status in(200, 201)) // Should be 201, but https://github.com/ga4gh/dockstore/issues/1859
        .check(jsonPath("$.id").saveAs("id")))

      .exec(http("Add file to Hosted Workflow")
        .patch("/workflows/hostedEntry/${id}")
        .headers(Map("Authorization" -> "Bearer ${token}", "Content-type" -> "application/json"))
        .body(RawFileBody("bodies/hosted/CreateHostedWdlWorkflow.json"))
        .check(status is 200))

      .exec(http("Save new revision of Hosted Workflow")
        .patch("/workflows/hostedEntry/${id}")
        .headers(Map("Authorization" -> "Bearer ${token}", "Content-type" -> "application/json"))
        .body(RawFileBody("bodies/hosted/UpdateHostedWdlWorkflow.json"))
        .check(status is 200))
}
