package io.dockstore.release_1_9

import io.dockstore.Requests._
import io.gatling.core.Predef._
import io.gatling.http.Predef._

/**
  * Simulates a Dockstore user visiting the logged out homepage
  */
object LoggedOutHomepage {

  val loggedOutHomepage =
  exec(
    Notification.getActiveNotifications()
      .check(status is 200)
  )
  exec(
    Ga4gh2.getMetadata
      .check(status is 200)
  )
  exec(
    MetaData.getDescriptorLanguageList
      .check(status is 200)
  )
}
