package io.dockstore

import io.dockstore.Requests.{Ga4gh2, User}
import io.gatling.core.Predef._
import io.gatling.http.Predef._

/**
  * Simulates a Dockstore user visiting the Accounts page
  */
object Accounts {

  val accountsPage =
    exec(
      Ga4gh2.getMetadata
        .check(status is 200)
    )
  exec(
    User.getUser("${token}")
      .check(status is 200)
      .check(jsonPath("$.id").saveAs("userId"))
      .check(jsonPath("$.username").saveAs("username"))
  )
    .exec(
      User.getTokens("${userId}", "${token}")
        .check(status is 200)
    )
    .exec(
      User.checkUsername("${username}", "${token}")
        .check(status is 200)
    )
}
