package io.dockstore.release_1_9

import io.dockstore.Requests._
import io.gatling.core.Predef._
import io.gatling.http.Predef._

import scala.util.Random

/**
  * Simulates a Dockstore user visiting organization and collection pages. Assumes the db that has the orgs and collections listed below.
  * Chose the broad because it's the most popular and causes us the most problems...
  */
object Organizations {

  // Hope to make more random, but for now pick the worst case scenario: Looking at the broad org and gatk collection
  val organizationList = Array("BroadInstitute", "PCAWG")
  val broadInstituteCollections = Array("GATKWorkflows", "pgs")
  val pcawgCollections = Array("PCAWG")
  var orgName = "BroadInstitute"

  var orgId = 16
  var collectionName = "GATKWorkflows"

  val organizations =
    exec(
      Organization.getApprovedOrganizations()
        .check(status is 200)
    )
      .pause(2)
      .exec(
    Organization.getOrganizationByName(orgName, "${token}")
      .check(status is 200)
  )
      .exec(
    Organization.getOrganizationMembers(orgId,"${token}")
      .check(status is 200)
  )
      .exec(
    Organization.getCollectionsFromOrganization(orgId, "${token}")
      .check(status is 200)
  )
      .exec(
    Organization.getOrganizationEvents(orgId, "${token}")
      .check(status is 200)
  )
      .exec(
    Organization.getStarredUsersForApprovedOrganization(orgId, "${token}")
      .check(status is 200)
  )
      .exec(
    Organization.getCollectionByName(orgName, collectionName, "${token}")
      .check(status is 200)
  )
}
