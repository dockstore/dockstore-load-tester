package io.dockstore

import io.dockstore.Requests.{Container, Ga4gh2, MetaData}
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
      Ga4gh2.getMetadata
      .resources(Container.getPublishedContainers()))
    .pause(13)

    .exec(
      Container.getPublishedContainers("${term}")
      .check(status is 200)
      .check(jsonPath("$[*].id").findRandom.saveAs("id"))
      .check(jsonPath("$[?(@.id == ${id})].tool_path").transform(toolPath => Utils.encode(toolPath)) saveAs ("tool_path"))
      .check(jsonPath("$[?(@.id == ${id})].defaultVersion").saveAs ("version"))
      .check(jsonPath("$[?(@.id == ${id})].workflowVersions[0]").saveAs("firstVersion")) // This doesn't handle no tags case
    )
    .pause(1)

    .exec(session => {
      val hasVersion = (session("version").validate[String] != TypeHelper.NullValueFailure)
      val newSession = if (hasVersion) session else session.set("version", session("firstVersion").as[String])
      newSession.set("version", Utils.encode(newSession("version").as[String]))
    })

    .exec(
      Container.getPublishedContainer("${tool_path}")
      .check(status is 200)
      .resources(MetaData.getDescriptorLanguageList
        .check(status is 200),
        Ga4gh2.getNflFiles("${tool_path}", "${version}")
          .check(status in(200, 204)),
        Ga4gh2.getWdlFiles("${tool_path}", "${version}")
          .check(status in(200, 204)),
        Ga4gh2.getCwlFiles("${tool_path}", "${version}")
          .check(status in(200, 204)),
        Container.getContainerStarredUsers("${id}")
          .check(status is 200),
        Container.getDockerfileByTag("${id}", "${version}")
          .check(status in (200, 400)) // Failing on at least quay.io/ucsc_cgl/rnaseq-cgl-pipeline
      )
    )

}