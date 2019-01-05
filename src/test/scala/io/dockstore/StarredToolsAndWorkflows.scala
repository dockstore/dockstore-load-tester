package io.dockstore

import io.dockstore.Requests.User
import io.gatling.core.Predef._
import io.gatling.http.Predef._

object StarredToolsAndWorkflows {

  val page = {
    exec(
      User.getStarredTools("${token}")
        .check(status is 200)
        .resources(
          User.getStarredWorkflows("${token}")
            .check(status is 200)
        )
    )
  }
}
