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

  def getMetadata = {
    http("Get metatdata")
      .get("/api/ga4gh/v2/metadata")
  }

  def getPublishedContainers(filter: String = "") = {
    http("Get first 10 published containers")
      .get("/containers/published")
      .queryParam("offset", "0")
      .queryParam("limit", 10)
      .queryParam("filter", filter)
      .queryParam("sortCol", "stars")
      .queryParam("sortOrder", "desc")
  }

  def getPublishedTool(toolPath: String) = {
    http("Get Published Tool")
      .get(s"/containers/path/tool/${toolPath}/published")
  }

  def getDescriptorLanguageList = {
    http(" Get Descriptor Language List")
      .get("/metadata/descriptorLanguageList")
  }

  def getContainerStarredUsers(containerId: String) = {
   http("Get Container Starred Users")
     .get(s"/containers/${containerId}/starredUsers")
 }

  def getDockerfileByTag(id: String, tag: String) = {
   http("Get Dockerfile tag")
     .get(s"/containers/${id}/dockerfile")
      .queryParam("tag", tag)
 }

  def getCwlFiles(toolPath: String, version: String) = {
    http("Get CWL files")
      .get(s"/api/ga4gh/v2/tools/${toolPath}/versions/${version}/CWL/files")
  }

  def getWdlFiles(toolPath: String, version: String) = {
    http("Get WDL files")
      .get(s"/api/ga4gh/v2/tools/${toolPath}/versions/${version}/WDL/files")
  }

  def getNflFiles(toolPath: String, version: String) = {
    http("Get NFL files")
      .get(s"/api/ga4gh/v2/tools/${toolPath}/versions/${version}/NFL/files")
  }
}
