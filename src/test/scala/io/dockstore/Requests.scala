package io.dockstore

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.http.client.Param
import io.gatling.http.client.body.form.FormUrlEncodedRequestBodyBuilder
import io.gatling.http.client.body.multipart.MultipartFormDataRequestBodyBuilder

import java.net.URLEncoder
import java.nio.charset.StandardCharsets

/**
  * <p>Simple wrapper for Dockstore API requests. Some reasons for the wrapper:
  * <ul>
  *   <li>Compiler can catch unused methods</li>
  *   <li>Assures a common http name across all invocations of an API (Gatling groups by name)</li>
  *   <li>Slightly useful reusable code for inserting authorization
  * </ul>
  *
  *
  * <p>This is divided up into objects that correspond to the <code>@Api()</code> annotations in the Dockstore code, or, viewed
  * another way, the different tags in the Swagger doc.
  *
  * <p>The goal is that every Dockstore API should have a corresponding method here. So far, methods only exist for APIs that
  * are tested from the existing simulation; new methods are added as the tests expand.
  *
  * <p>Endpoints that don't yet have corresponding methods have their paths in comments within each object.
  *
  * <p>This can get out of sync with the actual Dockstore API as the Dockstore API changes.
  */

object Requests {

  private def authHeader(token: String) = {
    if (token == "") Map()
    else Map("Authorization" -> s"Bearer ${token}")
  }

  object Ga4gh {
    def getTools = {
      http("GA4GHv1 Tools GET")
        .get("/api/api/ga4gh/v1/tools")
    }

    def getTool(id: String) = {
      http("GA4GHv1 Tool GET")
        .get(s"/api/api/ga4gh/v1/tools/${id}")
    }

    /**
     * Requires session attribute encodedTrsId be set
     * @return
     */
    def getToolVersions() = {
      val value = "/api/api/ga4gh/v1/tools/#{encodedTrsId}/versions"
      http(s"Get ${value}")
        .get(value)
    }

    def getToolVersion(id: String, version: String) = {
      http("Get tool version")
        .get(s"/api/api/ga4gh/v1/tools/${id}/versions/${version}")
    }

    /**
     * Requires session attributes encodedTrsId, version, and descriptorType be set
     * @return
     */
    def getToolDescriptor() = {
      val value = "/api/api/ga4gh/v1/tools/#{encodedTrsId}/versions/#{version}/#{descriptorType}/descriptor"
      http(s"Get ${value}")
        .get(value)
    }

    def getToolTests(id: String, version: String) = {
      http("Get tool version")
        .get(s"/api/api/ga4gh/v1/tools/${id}/versions/${version}/tests")

    }

    def getToolAddtionalDescriptor(id: String, version: String, relativePath: String) = {
      http("Get tool version")
        .get(s"/api/api/ga4gh/v1/tools/${id}/versions/${version}/descriptor/${relativePath}")
    }
  }

  object Ga4gh2 {
    def getNflFiles(toolPath: String, version: String, token: String = null) = {
      val builder = http("Get NFL files")
        .get(s"/api/api/ga4gh/v2/tools/${toolPath}/versions/${version}/NFL/files")
      if (token != null && !token.isEmpty) builder.headers(authHeader(token)) else builder
    }

    def getWdlFiles(toolPath: String, version: String, token: String = null) = {
      val builder = http("Get WDL files")
        .get(s"/api/api/ga4gh/v2/tools/${toolPath}/versions/${version}/WDL/files")
      if (token != null && !token.isEmpty) builder.headers(authHeader(token)) else builder
    }

    def getCwlFiles(toolPath: String, version: String, token: String = null) = {
      val builder = http("Get CWL files")
        .get(s"/api/api/ga4gh/v2/tools/${toolPath}/versions/${version}/CWL/files")
      if (token != null && !token.isEmpty) builder.headers(authHeader(token)) else builder
    }

    def getMetadata = {
      http("Get metatdata")
        .get("/api/api/ga4gh/v2/metadata")
    }

    def getTools(queryParamMap: Map[String, Any] = Map()) = {
      http("GA4GHv2 Tools GET")
        .get("/api/api/ga4gh/v2/tools")
          .queryParamMap(queryParamMap)
    }

    def getTool(id: String) = {
      http("GA4GHv2 Tool GET")
        .get(s"/api/api/ga4gh/v2/tools/${id}")
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
        .get(s"/api/workflows/path/workflow/${repo}/published?services=false")
    }

    def getStarredUsers(workflowId: String) = {
      http("Get Workflow Starred Users")
        .get(s"/api/workflows/${workflowId}/starredUsers")
    }

    def getPublished(filter: String = "") = {
      http("Get first 10 published workflows")
        .get("/api/workflows/published")
        .queryParam("offset", "0")
        .queryParam("limit", "10")
        .queryParam("filter", filter)
        .queryParam("sortCol", "stars")
        .queryParam("sortOrder", "desc")
    }

    def publishOrUnpublish(workflowId: String, token: String) = {
      http("Publish or Unpublish")
        .post(s"/api/workflows/${workflowId}/publish")
        .headers(authHeader(token))
        .body(ElFileBody("bodies/hosted/PublishBody.json")).asJson
    }

    def getWorkflow(workflowId: String, token: String) = {
      http("Get workflow")
        .get(s"/api/workflows/${workflowId}")
        .headers(authHeader(token))
    }

    def getSecondaryWdl(workflowId: String, version: String) = {
      http("Get secondary wdl")
        .get(s"/api/workflows/${workflowId}/secondaryDescriptors?tag=${version}&language=wdl")

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
        .patch(s"/api/workflows/hostedEntry/${id}")
        .headers(authHeader(token))
        .headers(Map("Content-type" -> "application/json"))
        .body(PebbleFileBody(filename))
    }

    def downloadWorkflowAsZip(workflowId: String, version: String) = {
      http("Download Workflow Zip Bundle")
        .get(s"/api/workflows/${workflowId}/zip/${version}")
        .headers(Map("Accept" -> "application/zip"))
    }

    def getShared(token: String) = {
      http("Get shared workflows")
        .get("/api/workflows/shared")
        .headers(authHeader(token))
    }

    def getTools(workflowId: String, workflowVersionId: String, token: String) = {
      http("Get Workflow Tools")
        .get(s"/api/workflows/${workflowId}/tools/${workflowVersionId}")
        .headers(authHeader(token))
    }

    def getDag(workflowId: String, workflowVersionId: String, token: String) = {
      http("Get Workflow Tools")
        .get(s"/api/workflows/${workflowId}/dag/${workflowVersionId}")
        .headers(authHeader(token))
    }

    def getStarredUsers(workflowId: String, token: String) = {
      http("Get workflow starred users")
        .get("/api/workflows/{workflowId}/starredUsers")
        .headers(authHeader(token))
        .check(status is 200)
    }

    def star(workflowId: String, token: String) = {
      http("Star Workflow")
        .put(s"/api/workflows/${workflowId}/star")
        .body(StringBody("""{ "star": "true" }""")).asJson
        .headers(authHeader(token))
    }

    def unstar(workflowId: String, token: String) = {
      http("Unstar Workflow")
        .delete(s"/api/workflows/${workflowId}/unstar")
        .headers(authHeader(token))
    }

    def githubRelease() = {
      http("GitHub Release")
          .post("/api/workflows/github/release")
          .formParam("repository", "#{repository}")
          .formParam("username", "#{username}")
          .formParam("installationId", System.getProperty(DockstoreWebUser.INSTALLATION_ID))
          .formParam("gitReference", "#{gitReference}")
          .headers(authHeader(System.getProperty(DockstoreWebUser.CURATOR_TOKEN)))
          .check(status is(session => session("expectedStatus").as[Int]))
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
        .get("/api/containers/published")
        .queryParam("offset", "0")
        .queryParam("limit", "10")
        .queryParam("filter", filter)
        .queryParam("sortCol", "stars")
        .queryParam("sortOrder", "desc")
    }

    def getPublishedContainer(toolPath: String) = {
      http("Get Published Tool")
        .get(s"/api/containers/path/tool/${toolPath}/published")
    }

    def getContainerStarredUsers(containerId: String) = {
      http("Get Container Starred Users")
        .get(s"/api/containers/${containerId}/starredUsers")
    }

    def getDockerfileByTag(id: String, tag: String) = {
      http("Get Dockerfile tag")
        .get(s"/api/containers/${id}/dockerfile")
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
        .patch(s"/api/containers/hostedEntry/${id}")
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
        .get("/api/metadata/rss")
        .headers(Map("Accept" -> "text/xml"))
    }

    def getDescriptorLanguageList = {
      http("Get Descriptor Language List")
        .get("/api/metadata/descriptorLanguageList")
    }

    def getDockerRegistryList = {
      http("Get Docker Registry List")
        .get("/api/metadata/dockerRegistryList")
    }

    def getSitemap = {
      http("Get sitemap")
        .get("/api/metadata/sitemap")
        .header("Accept", "text/html")
    }

    def getRunnerDependencies = {
      http("Get Runner Dependencies")
        .get("/api/metadata/runner_dependencies")
    }

    def getSourceControlList = {
      http("Get Source Control List")
        .get("/api/metadata/sourceControlList")
    }

    def getOkHttpCachePerformance = {
      http("Get OK HTTP Cache Performance")
        .get("/api/metadata/okHttpCachePerformance")
    }
    def getConfigJson = {
      http("config.json")
          .get("/api/metadata/config.json")
    }
  }

  object Curation {
    def getNotifications = http("GET notifications").get("/api/curation/notifications")
  }

  object Categories {
    def getCategories = http("GET Categories").get("/api/categories")
  }

  object User {
    def getUser(token: String) = http("Get User")
      .get("/api/users/user")
      .headers(authHeader(token))

    def getWorkflows(userId: String, token: String) = {
      http("Get user's workflows")
        .get(s"/api/users/${userId}/workflows")
        .headers(authHeader(token))
    }

    def getPublishedWorkflows(userId: String, token: String) = {
      http("Get user's published workflows")
        .get(s"/api/users/${userId}/workflows/published")
        .headers(authHeader(token))
    }

    def getContainers(userId: String, token: String) = {
      http("Get user's containers")
        .get(s"/api/users/${userId}/containers")
        .headers(authHeader(token))
    }

    def getPublishedContainers(userId: String, token: String) = {
      http("Get user's published containers")
        .get(s"/api/users/${userId}/containers/published")
        .headers(authHeader(token))
    }

    def getTokens(userId: String, token: String) = {
      http("Get user's tokens")
        .get(s"/api/users/${userId}/tokens")
        .headers(authHeader(token))
    }

    def getExtended(userId: String, token: String) = {
      http("Get extended user info")
        .get(s"/api/users/${userId}/extended")
        .headers(authHeader(token))
    }

    def checkUsername(username: String, token: String) = {
      http("Check user")
        .get(s"/api/users/username/${username}")
        .headers(authHeader(token))
    }

    def refreshWorkflows(userId: String, token: String) = {
      http("Refresh user's workflows")
        .get(s"/api/users/${userId}/workflows/refresh")
        .headers(authHeader(token))
    }

    def refreshOrgWorkflows(userId: String, organization: String, token: String) = {
      http("Refresh user's workflows")
        .get(s"/api/users/${userId}/workflows/${organization}/refresh")
        .headers(authHeader(token))
    }

    def getStarredWorkflows(token: String) = {
      http("Get Starred Workflows")
        .get("/api/users/starredWorkflows")
        .headers(authHeader(token))
    }

    def refreshContainers(userId: String, token: String) = {
      http("Refresh user's workflows")
        .get(s"/api/users/${userId}/containers/refresh")
        .headers(authHeader(token))
    }

    def refreshOrgContainers(userId: String, organization: String, token: String) = {
      http("Refresh user's workflows")
        .get(s"/api/users/${userId}/containers/${organization}/refresh")
        .headers(authHeader(token))
    }

    def getStarredTools(token: String) = {
      http("Get Starred Tools")
        .get("/api/users/starredTools")
        .headers(authHeader(token))
    }

    def getUserEntries(token: String) = {
      http("Get all of the entries for a user, sorted by most recently updated.")
        .get("/api/users/users/entries")
        .queryParam("count", 10)
        .headers(authHeader(token))
    }

    def getFilteredUserEntries(token: String, filter: String) = {
      http("Get all of the entries for a user, sorted by most recently updated.")
        .get("/api/users/users/entries")
        .queryParam("count", 10)
        .queryParam("filter", filter)
        .headers(authHeader(token))
    }

    def getUserDockstoreOrganizations(token: String) = {
      http("Get all of the Dockstore organizations for a user, sorted by most recently updated.")
        .get("/api/users/users/organizations")
        .queryParam("count", 10)
        .headers(authHeader(token))
    }

    def getFilteredUserDockstoreOrganizations(token: String, filter: String) = {
      http("Get all of the Dockstore organizations for a user, sorted by most recently updated.")
        .get("/api/users/users/organizations")
        .queryParam("count", 10)
        .queryParam("filter", filter)
        .headers(authHeader(token))
    }

    def getUserDockstoreMemberships(token: String) = {
      http("Get the logged-in user's memberships.")
        .get("/api/users/user/memberships")
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

  object Organization {
    def getApprovedOrganizations() = {
      http("Get list of approved organizations")
        .get("/api/organizations")
    }

    def getOrganizationByName(name: String, token: String = "") = {
      http("Retrieve an organization by name")
        .get(s"/api/organizations/name/${name}")
        .headers(authHeader(token))
    }

    def getOrganizationById(orgId: Long, token: String) = {
      http("Retrieve an organization by ID")
        .get(s"/api/organizations/${orgId}")
        .headers(authHeader(token))
    }

    def getOrganizationMembers(orgId: Long, token: String = "") = {
      http("Retrieve all members for an organization.")
        .get(s"/api/organizations/${orgId}/members")
        .headers(authHeader(token))
    }

    def getCollectionsFromOrganization(orgId: Long, token: String = "") = {
      http("Retrieve all collections for an organization.")
        .get(s"/api/organizations/${orgId}/collections")
        .headers(authHeader(token))
    }

    def getOrganizationEvents(orgId: Long, token: String = "") = {
      http("getOrganizationEvents")
        .get(s"/api/organizations/${orgId}/events")
        .queryParam("offset", "0")
        .queryParam("limit",  "30")
        .headers(authHeader(token))
    }

    def getStarredUsersForApprovedOrganization(orgId: Long, token: String = "") = {
      http("Return list of users who starred the given approved organization")
        .get(s"/api/organizations/${orgId}/starredUsers")
    }

    def getCollectionByName(orgName: String, collectionName: String, token: String = "") = {
      http("Retrieve a collection by name. Supports optional authentication.")
        .get(s"/api/organizations/${orgName}/collections/${collectionName}/name")
        .headers(authHeader(token))
    }

    def getAllOrganizations(token: String) = {
      http("List all organizations, regardless of organization status. Admin/curator only.")
        .get("/api/organizations/all")
        .queryParam("type", "pending")
    }
  }

  object Notification {
    def getActiveNotifications() = {
      http("Return all active notifications")
        .get("/api/curation/notifications")
    }
  }

  object Event {
    def getEvents(token: String) = {
      http("Get events based on filters.")
        .get("/api/events")
        .queryParam("event_search_type", "ALL_STARRED")
        .headers(authHeader(token))
    }
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
