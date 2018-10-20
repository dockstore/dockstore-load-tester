package io.dockstore

import io.gatling.core.Predef._
import io.gatling.http.Predef._

import java.util.UUID.randomUUID

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
      .exec(http("Create Hosted Tool")
        .post("/containers/hostedEntry")
          .queryParam("registry", "quay.io")
        .queryParam("name", "${toolName}")
        .queryParam("descriptorType", "cwl")
        .header("Authorization", "Bearer ${token}")
        .check(status in(200, 201)) // Should be 201, but https://github.com/ga4gh/dockstore/issues/1859
        .check(jsonPath("$.id").saveAs("id")))

      .exec(http("Add file to Hosted Tool")
        .patch("/containers/hostedEntry/${id}")
        .headers(Map("Authorization" -> "Bearer ${token}", "Content-type" -> "application/json"))
        .body(RawFileBody("bodies/hosted/CreateHostedCwlTool.json"))
        .check(status is 200))

      .exec(http("Save new revision of Hosted Tool")
        .patch("/containers/hostedEntry/${id}")
        .headers(Map("Authorization" -> "Bearer ${token}", "Content-type" -> "application/json"))
        .body(RawFileBody("bodies/hosted/UpdateHostedCwlTool.json"))
        .check(status is 200))
}
