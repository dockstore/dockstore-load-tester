package io.dockstore

import io.dockstore.Requests.{Container, Ga4gh2}
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
    Ga4gh2.getMetadata
    .check(status is 200))

    .exec(
      Container.getPublishedContainers()
      .check(status is 200)
    )
}
