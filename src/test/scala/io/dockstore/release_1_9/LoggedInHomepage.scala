package io.dockstore.release_1_9

import io.dockstore.Requests.{Event, Ga4gh2, MetaData, Notification, Organization, User}
import io.gatling.core.Predef._
import io.gatling.http.Predef._

/**
  * Simulates a Dockstore user visiting the logged in homepage and performing a search through their entries and organizations. Notifications
  * gets called twice on homepage.
  */
object LoggedInHomepage {

  val loggedInHomepage =
    exec(
      User.getUser("${token}")
        .check(status is 200)
        .check(jsonPath("$.id").saveAs("userId"))
    )
      .exec(
    Notification.getActiveNotifications()
      .check(status is 200)
  )
      .exec(
    Ga4gh2.getMetadata
      .check(status is 200)
  )
      .exec(
    MetaData.getDescriptorLanguageList
      .check(status is 200)
  )
      .exec(
    User.getTokens("${userId}", "${token}")
      .check(status is 200)
  )
      .exec(
    Notification.getActiveNotifications()
      .check(status is 200)
  )
      .exec(
    Event.getEvents("${token}")
      .check(status is 200)
  )
      .exec(
    User.getUserEntries("${token}")
      .check(status is 200)
  )
      .exec(
    User.getUserDockstoreOrganizations("${token}")
      .check(status is 200)
  )
      .exec(
    User.getUserDockstoreMemberships("${token}")
      .check(status is 200)
  )
      .pause(2)
      .exec(
    User.getFilteredUserEntries("${token}", "foo")
      .check(status is 200)
  )
      .exec(
    User.getFilteredUserDockstoreOrganizations("${token}", "foo")
  )
}
