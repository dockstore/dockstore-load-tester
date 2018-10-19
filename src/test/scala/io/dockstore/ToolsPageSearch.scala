package io.dockstore

import io.gatling.commons.util.TypeHelper
import io.gatling.core.Predef._
import io.gatling.http.Predef._

object ToolsPageSearch {

  private val searchTermFeeder = csv("data/toolSearchTerms.csv").random

  val search = feed(searchTermFeeder)
    .exec(http("Get metatdata and published containers")
      .get("/api/ga4gh/v2/metadata")
      .resources(http("Get first 10 published containers")
        .get("/containers/published")
        .queryParam("offset", "0")
        .queryParam("limit", 10)
        .queryParam("filter", "")
        .queryParam("sortCol", "stars")
        .queryParam("sortOrder", "desc")))
    .pause(13)
    .exec(http("Tools search for term")
      .get("/containers/published")
      .queryParam("offset", "0")
      .queryParam("limit", 10)
      .queryParam("filter", "${term}")
      .queryParam("sortCol", "stars")
      .queryParam("sortOrder", "desc")
      .check(status is 200)
      .check(jsonPath("$[*].id").findRandom.saveAs("id"))
      .check(jsonPath("$[?(@.id == ${id})].tool_path").transform(toolPath => Utils.encode(toolPath)) saveAs ("tool_path"))
      .check(jsonPath("$[?(@.id == ${id})].defaultVersion").saveAs ("version"))
      .check(jsonPath("$[?(@.id == ${id})].tags[0]").saveAs("firstVersion")) // This doesn't handle no tags case
    )
    .exec(session => {
      val hasVersion = (session("version").validate[String] != TypeHelper.NullValueFailure)
      val newSession = if (hasVersion) session else session.set("version", session("firstVersion").as[String])
      newSession.set("version", Utils.encode(newSession("version").as[String]))
    })

    .pause(1)
    .exec(http("Get tool")
      .get("/containers/path/tool/${tool_path}/published")
      .check(status is 200)
      .resources(http(" Get Descriptor Language List")
        .get("/metadata/descriptorLanguageList")
        .check(status is 200),
        http("Get NFL files")
          .get("/api/ga4gh/v2/tools/${tool_path}/versions/${version}/NFL/files")
          .check(status in(200, 204)),
        http("Get WDL files")
          .get("/api/ga4gh/v2/tools/${tool_path}/versions/${version}/WDL/files")
          .check(status in(200, 204)),
        http("Get CWL files")
          .get("/api/ga4gh/v2/tools/${tool_path}/versions/${version}/CWL/files")
          .check(status in(200, 204)),
        http("Get Container Starred Users")
          .get("/containers/${id}/starredUsers")
          .check(status is 200),
        http("Get Dockerfile tag")
          .get("/containers/${id}/dockerfile")
          .queryParam("tag", "${version}")
          .check(status in (200, 400)) // Failing on at least quay.io/ucsc_cgl/rnaseq-cgl-pipeline
      )
    )
  //			.headers(headers_8),
  //            http("request_50")
  //			.options("/api/ga4gh/v2/tools/quay.io%2Fwtsicgp%2Fdockstore-cgpwgs/versions/1.1.4/cwl/descriptor/Dockstore.cwl")
  //			.headers(headers_8),
  //            http("request_51")
  //			.get("/api/ga4gh/v2/tools/quay.io%2Fwtsicgp%2Fdockstore-cgpwgs/versions/1.1.4/cwl/descriptor/Dockstore.cwl")
  //			.headers(headers_18),
  //            http("request_52")
  //			.get("/api/ga4gh/v2/tools/quay.io%2Fwtsicgp%2Fdockstore-cgpwgs/versions/1.1.4/cwl/descriptor/examples%2Fanalysis_config.local.json")
  //
}