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
      .exec(Requests.createHostedWorkflow("${workflowName}", "${token}")
        .check(status in(200, 201)) // Should be 201, but https://github.com/ga4gh/dockstore/issues/1859
        .check(jsonPath("$.id").saveAs("id")))

      .exec(Requests.addFileToHostedWorkflow("${id}", "${token}", "bodies/hosted/CreateHostedWdlWorkflow.json")
        .check(status is 200))

      // Save another revision
      .exec(Requests.addFileToHostedWorkflow("${id}", "${token}", "bodies/hosted/UpdateHostedWdlWorkflow.json")
        .check(status is 200))
}
