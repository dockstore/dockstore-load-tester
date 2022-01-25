package io.dockstore.release_1_9

import io.dockstore.Requests.{Organization, _}
import io.gatling.core.Predef._
import io.gatling.http.Predef._

import scala.concurrent.duration.{FiniteDuration, SECONDS}
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
  val orgName = "BroadInstitute"

  val orgId = 16
  val collectionName = "GATKWorkflows"

  val organizations =
    exec(
      Organization.getApprovedOrganizations()
          .check(status is 200)
    )
        .pause(1, 5)
        .exec(
          Organization.getOrganizationByName(orgName)
              .check(status is 200)
              .resources(
                Organization.getOrganizationMembers(orgId)
                    .check(status is 200),
                Organization.getCollectionsFromOrganization(orgId)
                    .check(status is 200),
                Organization.getOrganizationEvents(orgId)
                    .check(status is 200),
                Organization.getStarredUsersForApprovedOrganization(orgId)
                    .check(status is 200)
              )
        )
        .pause(1, 5)
        .exec(
          Organization.getCollectionByName(orgName, collectionName)
              .check(status is 200)
        )
}
