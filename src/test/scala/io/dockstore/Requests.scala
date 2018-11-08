package io.dockstore

import io.gatling.core.Predef._
import io.gatling.http.Predef._

object Requests {

  private def authHeader(token: String) = {
    Map("Authorization" -> s"Bearer ${token}")
  }

  object Ga4gh {
    def getTools = {
      http("Get tools")
        .get("/api/ga4gh/v1/tools")
    }

    def getTool(id: String) = {
      http("Get tool")
        .get(s"/api/ga4gh/v1/tools/${id}")
    }

    def getToolVersions(id: String) = {
      http("Get tool")
        .get(s"/api/ga4gh/v1/tools/${id}/versions")
    }

    def getToolVersion(id: String, version: String) = {
      http("Get tool version")
        .get(s"/api/ga4gh/v1/tools/${id}/versions/${version}")
    }

    def getToolDescriptor(id: String, version: String) = {
      http("Get tool version")
        .get(s"/api/ga4gh/v1/tools/${id}/versions/${version}/descriptor")

    }

    def getToolTests(id: String, version: String) = {
      http("Get tool version")
        .get(s"/api/ga4gh/v1/tools/${id}/versions/${version}/tests")

    }

    def getToolAddtionalDescriptor(id: String, version: String, relativePath: String) = {
      http("Get tool version")
        .get(s"/api/ga4gh/v1/tools/${id}/versions/${version}/descriptor/${relativePath}")
    }
  }

  object Ga4gh2 {
    def getNflFiles(toolPath: String, version: String) = {
      http("Get NFL files")
        .get(s"/api/ga4gh/v2/tools/${toolPath}/versions/${version}/NFL/files")
    }

    def getWdlFiles(toolPath: String, version: String) = {
      http("Get WDL files")
        .get(s"/api/ga4gh/v2/tools/${toolPath}/versions/${version}/WDL/files")
    }

    def getCwlFiles(toolPath: String, version: String) = {
      http("Get CWL files")
        .get(s"/api/ga4gh/v2/tools/${toolPath}/versions/${version}/CWL/files")
    }

    def getMetadata = {
      http("Get metatdata")
        .get("/api/ga4gh/v2/metadata")
    }

    /*
    "/api/ga4gh/v2/extended/tools/{organization}": {
      "/api/ga4gh/v2/extended/workflows/{organization}": {
      "/api/ga4gh/v2/extended/containers/{organization}": {
      "/api/ga4gh/v2/extended/organizations": {
      "/api/ga4gh/v2/extended/tools/index": {
      "/api/ga4gh/v2/extended/tools/entry/_search": {
      "/api/ga4gh/v2/extended/{id}/versions/{version_id}/{type}/tests/{relative_path}": {
      "/api/ga4gh/v2/metadata": {
      "/api/ga4gh/v1/metadata": {
      "/api/ga4gh/v2/toolClasses": {
      "/api/ga4gh/v1/tool-classes": {
      "/api/ga4gh/v2/tools": {
      "/api/ga4gh/v2/tools/{id}": {
      "/api/ga4gh/v2/tools/{id}/versions": {
      "/api/ga4gh/v2/tools/{id}/versions/{version_id}/containerfile": {
      "/api/ga4gh/v2/tools/{id}/versions/{version_id}": {
      "/api/ga4gh/v2/tools/{id}/versions/{version_id}/{type}/descriptor": {
      "/api/ga4gh/v2/tools/{id}/versions/{version_id}/{type}/descriptor/{relative_path}": {
      "/api/ga4gh/v2/tools/{id}/versions/{version_id}/{type}/tests": {
*/

  }

  object Workflow {
    def getPublishedWorkflow(repo: String) = {
      http("Published Worfklow")
        .get(s"/workflows/path/workflow/${repo}/published")
    }

    def getStarredUsers(workflowId: String) = {
      http("Get Workflow Starred Users")
        .get(s"/workflows/${workflowId}/starredUsers")
    }

    def getPublished(filter: String = "") = {
      http("Get first 10 published workflows")
        .get("/workflows/published")
        .queryParam("offset", 0)
        .queryParam("limit", 10)
        .queryParam("filter", filter)
        .queryParam("sortCol", "stars")
        .queryParam("sortOrder", "desc")
    }

    def publishOrUnpublish(workflowId: String, token: String) = {
      http("Publish or Unpublish")
        .post(s"/workflows/${workflowId}/publish")
        .headers(authHeader(token))
        .body(ElFileBody("bodies/hosted/PublishBody.json")).asJson
    }

    def getWorkflow(workflowId: String, token: String) = {
      http("Get workflow")
        .get(s"/workflows/${workflowId}")
        .headers(authHeader(token))
    }

    def getSecondaryWdl(workflowId: String, version: String) = {
      http("Get secondary wdl")
        .get(s"/workflows/${workflowId}/secondaryWdl?tag=${version}")

    }

    def createHosted(workflowName: String, token: String, descriptorType: String) = {
      http("Create Hosted Workflow")
        .post("/workflows/hostedEntry")
        .queryParam("name", s"${workflowName}")
        .queryParam("descriptorType", descriptorType)
        .headers(authHeader(token))
    }

    def addFileToHostedWorkflow(id: String, token: String, filename: String) = {
      http("Add file to Hosted Workflow")
        .patch(s"/workflows/hostedEntry/${id}")
        .headers(authHeader(token))
        .headers(Map("Content-type" -> "application/json"))
        .body(RawFileBody(filename))
    }

    def downloadWorkflowAsZip(workflowId: String, version: String) = {
      http("Download Workflow Zip Bundle")
        .get(s"/workflows/${workflowId}/zip/${version}")
        .headers(Map("Accept" -> "application/zip"))
    }

    def getShared(token: String) = {
      http("Get shared workflows")
        .get("/workflows/shared")
        .headers(authHeader(token))
    }

    def getTools(workflowId: String, workflowVersionId: String, token: String) = {
      http("Get Workflow Tools")
        .get(s"/workflows/${workflowId}/tools/${workflowVersionId}")
        .headers(authHeader(token))
    }

    def getDag(workflowId: String, workflowVersionId: String, token: String) = {
      http("Get Workflow Tools")
        .get(s"/workflows/${workflowId}/dag/${workflowVersionId}")
        .headers(authHeader(token))
    }

    def getStarredUsers(workflowId: String, token: String) = {
      http("Get workflow starred users")
        .get("/workflows/{workflowId}/starredUsers")
        .headers(authHeader(token))
        .check(status is 200)
    }

    def star(workflowId: String, token: String) = {
      http("Star Workflow")
        .put(s"/workflows/${workflowId}/star")
        .body(StringBody("""{ "star": "true" }""")).asJson
        .headers(authHeader(token))
    }

    def unstar(workflowId: String, token: String) = {
      http("Unstar Workflow")
        .delete(s"/workflows/${workflowId}/unstar")
        .headers(authHeader(token))
    }

    /*
        "/workflows/{workflowId}/publish": {
    "/workflows/{workflowId}/users": {
    "/workflows/{workflowId}/wdl": {
    "/workflows/{workflowId}/cwl": {
    "/workflows/{workflowId}": {
    "/workflows/{workflowId}/restub": {
    "/workflows/{workflowId}/labels": {
    "/workflows/{workflowId}/defaultVersion": {
    "/workflows/{workflowId}/verify/{workflowVersionId}": {
    "/workflows/{workflowId}/requestDOI/{workflowVersionId}": {
    "/workflows/{workflowId}/resetVersionPaths": {
    "/workflows/published/{workflowId}": {
    "/workflows/organization/{organization}/published": {
    "/workflows/published": {
    "/workflows/shared": {
    "/workflows/path/workflow/{repository}": {
    "/workflows/path/workflow/{repository}/permissions": {
    "/workflows/path/workflow/{repository}/actions": {
    "/workflows/path/entry/{repository}": {
    "/workflows/path/entry/{repository}/published": {
    "/workflows/path/{repository}": {
    "/workflows/path/workflow/{repository}/published": {
    "/workflows/{workflowId}/verifiedSources": {
    "/workflows/{workflowId}/nextflow": {
    "/workflows/{workflowId}/cwl/{relative-path}": {
    "/workflows/{workflowId}/wdl/{relative-path}": {
    "/workflows/{workflowId}/nextflow/{relative-path}": {
    "/workflows/{workflowId}/secondaryCwl": {
    "/workflows/{workflowId}/secondaryWdl": {
    "/workflows/{workflowId}/secondaryNextflow": {
    "/workflows/{workflowId}/testParameterFiles": {
    "/workflows/manualRegister": {
    "/workflows/{workflowId}/workflowVersions": {
    "/workflows/{workflowId}/dag/{workflowVersionId}": {
    "/workflows/{workflowId}/star": {
    "/workflows/{workflowId}/unstar": {
    "/workflows/{entryId}/registerCheckerWorkflow/{descriptorType}": {
    "/workflows/{workflowId}/refresh": {

     */
  }

  object Container {
    def getPublishedContainers(filter: String = "") = {
      http("Get first 10 published containers")
        .get("/containers/published")
        .queryParam("offset", "0")
        .queryParam("limit", 10)
        .queryParam("filter", filter)
        .queryParam("sortCol", "stars")
        .queryParam("sortOrder", "desc")
    }

    def getPublishedContainer(toolPath: String) = {
      http("Get Published Tool")
        .get(s"/containers/path/tool/${toolPath}/published")
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

    def createHostedTool(toolName: String, token: String, descriptorType: String) = {
      http("Create Hosted Tool")
        .post("/containers/hostedEntry")
        .queryParam("registry", "quay.io")
        .queryParam("name", toolName)
        .queryParam("descriptorType", descriptorType)
        .headers(authHeader(token))
        .check(status in(200, 201)) // Should be 201, but https://github.com/ga4gh/dockstore/issues/1859
    }

    def addFileToHostedTool(id: String, token: String, filename: String) = {
      http("Add file to Hosted Tool")
        .patch(s"/containers/hostedEntry/${id}")
        .headers(authHeader(token))
        .headers(Map("Content-type" -> "application/json"))
        .body(RawFileBody(filename))
    }

    /*
      "/containers/{containerId}/publish": {
    "/containers/{containerId}/users": {
    "/containers/{containerId}": {
    "/containers/{containerId}/wdl": {
    "/containers/{containerId}/cwl": {
    "/containers/{containerId}/labels": {
    "/containers/{toolId}/defaultVersion": {
    "/containers/{containerId}/verifiedSources": {
    "/containers/{containerId}/cwl/{relative-path}": {
    "/containers/{containerId}/wdl/{relative-path}": {
    "/containers/{containerId}/secondaryCwl": {
    "/containers/{containerId}/secondaryWdl": {
    "/containers/{containerId}/testParameterFiles": {
    "/containers/{containerId}/star": {
    "/containers/{containerId}/unstar": {
    "/containers/{containerId}/updateTagPaths": {
    "/containers/published/{containerId}": {
    "/containers/namespace/{namespace}/published": {
    "/containers/schema/{containerId}/published": {
    "/containers/registerManual": {
    "/containers/published": {
    "/containers/path/{repository}/published": {
    "/containers/path/{repository}": {
    "/containers/path/tool/{repository}": {
    "/containers/path/tool/{repository}/published": {
    "/containers/{containerId}/dockerfile": {
    "/containers/dockerRegistryList": {
    "/containers/{toolId}/zip/{tagId}": {
    "/containers/{containerId}/refresh": {
    "/containers/{containerId}/tags": {
    "/containers/path/{containerId}/tags": {
    "/containers/{containerId}/tags/{tagId}": {
    "/containers/{containerId}/verify/{tagId}": {
    "/containers/{containerId}/requestDOI/{tagId}": {

     */
  }

  object MetaData {
    def getRss = {
      http("Get RSS")
        .get("/metadata/rss")
    }

    def getDescriptorLanguageList = {
      http("Get Descriptor Language List")
        .get("/metadata/descriptorLanguageList")
    }

    def getDockerRegistryList = {
      http("Get Docker Registry List")
        .get("/metadata/dockerRegistryList")
    }

    def getSitemap = {
      http("Get sitemap")
        .get("/metadata/sitemap")
    }

    def getRunnerDependencies = {
      http("Get Runner Dependencies")
        .get("/metadata/runner_dependencies")
    }

    def getSourceControlList = {
      http("Get Source Control List")
        .get("/metadata/sourceControlList")
    }

    def getOkHttpCachePerformance = {
      http("Get OK HTTP Cache Performance")
        .get("/metadata/okHttpCachePerformance")
    }
  }

  object User {
    def getUser(token: String) = http("Get User")
      .get("/users/user")
      .headers(authHeader(token))

    def getWorkflows(userId: String, token: String) = {
      http("Get user's workflows")
        .get(s"/users/${userId}/workflows")
        .headers(authHeader(token))
    }

    def getPublishedWorkflows(userId: String, token: String) = {
      http("Get user's published workflows")
        .get(s"/users/${userId}/workflows/published")
        .headers(authHeader(token))
    }

    def getContainers(userId: String, token: String) = {
      http("Get user's containers")
        .get(s"/users/${userId}/containers")
        .headers(authHeader(token))
    }

    def getPublishedContainers(userId: String, token: String) = {
      http("Get user's published containers")
        .get(s"/users/${userId}/containers/published")
        .headers(authHeader(token))
    }

    def getTokens(userId: String, token: String) = {
      http("Get user's tokens")
        .get(s"/users/${userId}/tokens")
        .headers(authHeader(token))
    }

    def getExtended(userId: String, token: String) = {
      http("Get extended user info")
        .get(s"/users/${userId}/extended")
        .headers(authHeader(token))
    }

    def checkUsername(username: String, token: String) = {
      http("Check user")
        .get(s"/users/username/${username}")
        .headers(authHeader(token))
    }

    def refreshWorkflows(userId: String, token: String) = {
      http("Refresh user's workflows")
        .get(s"/users/${userId}/workflows/refresh")
        .headers(authHeader(token))
    }

    def refreshOrgWorkflows(userId: String, organization: String, token: String) = {
      http("Refresh user's workflows")
        .get(s"/users/${userId}/workflows/${organization}/refresh")
        .headers(authHeader(token))
    }

    def getStarredWorkflows(token: String) = {
      http("Get Starred Workflows")
        .get("/users/starredWorkflows")
        .headers(authHeader(token))
    }

    def refreshContainers(userId: String, token: String) = {
      http("Refresh user's workflows")
        .get(s"/users/${userId}/containers/refresh")
        .headers(authHeader(token))
    }

    def refreshOrgContainers(userId: String, organization: String, token: String) = {
      http("Refresh user's workflows")
        .get(s"/users/${userId}/containers/${organization}/refresh")
        .headers(authHeader(token))
    }

    def getStarredTools(token: String) = {
      http("Get Starred Tools")
        .get("/users/starredTools")
        .headers(authHeader(token))
    }

    /*
        "/users/updateUserMetadata": {
    "/users/{userId}": {
    "/users/groups/{groupId}": {
    "/users/groups": {
    "/users/username/{username}": {
    "/users/user/changeUsername": {
    "/users/{userId}/tokens/github.com": {
    "/users/{userId}/tokens/gitlab.com": {
    "/users/{userId}/tokens/quay.io": {
    "/users/{userId}/tokens/dockstore": {
    "/users/{userId}/groups": {
    "/users/groups/{groupId}/users": {
    "/users/{userId}/groups/{groupId}": {
    "/users/user/updateUserMetadata": {

     */
  }

}

object Entries {
  /*
    "/entries/{id}/aliases": {

   */
}

object Auth {
  /*
      "/auth/tokens/{tokenId}": {
      "/auth/tokens/quay.io": {
      "/auth/tokens/gitlab.com": {
      "/auth/tokens/google": {
      "/auth/tokens/github": {
      "/auth/tokens/github.com": {
      "/auth/tokens/bitbucket.org": {

   */
}
