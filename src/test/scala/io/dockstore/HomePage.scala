package io.dockstore

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.jdbc.Predef._

/**
  * Makes the API calls of a user going to the home page
  * <ol>
  *   <li>Gets metadata
  *   <li>Gets tools
  * </ol>
  */
object HomePage {

  val open = exec(
    Requests.getMetadata
    .check(status is 200))

    .exec(
      Requests.getPublishedContainers()
      .check(status is 200)
    )
}
