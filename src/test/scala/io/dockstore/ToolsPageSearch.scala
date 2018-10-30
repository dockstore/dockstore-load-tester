package io.dockstore

import io.gatling.commons.util.TypeHelper
import io.gatling.core.Predef._
import io.gatling.http.Predef._

/**
  * Makes the API calls of a user going to Tools page by
  *
  * <ol>
  *   <li>Getting the list of tools
  *   <li>Searching for a pseudo-random set of tools (terms searched for are in data/toolSearchTerms.csv)
  *   <li>Drilling into a random tool from the queried tools from the previous step
  * </ol>
  */

object ToolsPageSearch {

  private val searchTermFeeder = csv("data/toolSearchTerms.csv").random

  val search = feed(searchTermFeeder)
    .exec(
      Requests.getMetadata
      .resources(Requests.getPublishedContainers()))
    .pause(13)

    .exec(
      Requests.getPublishedContainers("${term}")
      .check(status is 200)
      .check(jsonPath("$[*].id").findRandom.saveAs("id"))
      .check(jsonPath("$[?(@.id == ${id})].tool_path").transform(toolPath => Utils.encode(toolPath)) saveAs ("tool_path"))
      .check(jsonPath("$[?(@.id == ${id})].defaultVersion").saveAs ("version"))
      .check(jsonPath("$[?(@.id == ${id})].tags[0]").saveAs("firstVersion")) // This doesn't handle no tags case
    )
    .pause(1)

    .exec(session => {
      val hasVersion = (session("version").validate[String] != TypeHelper.NullValueFailure)
      val newSession = if (hasVersion) session else session.set("version", session("firstVersion").as[String])
      newSession.set("version", Utils.encode(newSession("version").as[String]))
    })

    .exec(
      Requests.getPublishedContainer("${tool_path}")
      .check(status is 200)
      .resources(Requests.getDescriptorLanguageList
        .check(status is 200),
        Requests.getNflFiles("${tool_path}", "${version}")
          .check(status in(200, 204)),
        Requests.getWdlFiles("${tool_path}", "${version}")
          .check(status in(200, 204)),
        Requests.getCwlFiles("${tool_path}", "${version}")
          .check(status in(200, 204)),
        Requests.getContainerStarredUsers("${id}")
          .check(status is 200),
        Requests.getDockerfileByTag("${id}", "${version}")
          .check(status in (200, 400)) // Failing on at least quay.io/ucsc_cgl/rnaseq-cgl-pipeline
      )
    )

}