package io.dockstore

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import java.util.UUID.randomUUID

import io.dockstore.Requests.Container

/**
  * This needs more work -- need to figure out registry
  * <ol>
  * <li>Creates a hosted tool
  * <li>Adds a file to it
  * <li>Saves a new revision
  * </ol>
  */
object CreateAndUpdateHostedTool {

  private val toolNameFeeder = Iterator.continually(Map("toolName" -> randomUUID().toString))

  def create =
    feed(toolNameFeeder)
      .exec(Container.createHostedTool("${toolName}", "${token}", "cwl")
        .check(jsonPath("$.id").saveAs("id")))

      .exec(
        Container.addFileToHostedTool("${id}", "${token}", "bodies/hosted/CreateHostedCwlTool.json")
        .check(status is 200))

      .exec(
        Container.addFileToHostedTool("${id}", "${token}", "bodies/hosted/UpdateHostedCwlTool.json")
        .check(status is 200))

}
