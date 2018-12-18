package io.dockstore

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import java.util.UUID.randomUUID

import io.dockstore.Requests.Workflow

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
    doIf(session => !session("token").as[String].equals(Requests.ANONOYMOUS)) {

      val randomComments = "randomComments" // The Pebble variable in HostedWdlWorkflow.json

      feed(workflowNameFeeder)
        .exec(Workflow.createHosted("${workflowName}", "${token}", "wdl")
          .check(status in(200, 201)) // Should be 201, but https://github.com/ga4gh/dockstore/issues/1859
          .check(jsonPath("$.id").saveAs("id")))

        .exec(session => session.set(randomComments, Utils.randomWdlComments))

        .exec(Workflow.addFileToHostedWorkflow("${id}", "${token}", "bodies/hosted/HostedWdlWorkflow.json")
          .check(status is 200))

        .exec(session => session.set(randomComments, Utils.randomWdlComments))

        // Save another revision
        .exec(Workflow.addFileToHostedWorkflow("${id}", "${token}", "bodies/hosted/HostedWdlWorkflow.json")
        .check(status is 200))
    }
}
