package io.dockstore

import io.dockstore.Requests.{Categories, Container, Curation, Ga4gh2, MetaData}
import io.gatling.core.Predef._
import io.gatling.http.Predef._

/**
  * Makes the API calls of a user going to the home page
  * <ol>
  *   <li>Gets metadata
  *   <li>Gets tools
  * </ol>
  */
object HomePage {

  val loggedOutHomePage = exec(
    http("Logged-out Home page")
        .get("/")
        .headers(Map("Accept" -> "text/html"))
        .check(status is 200)
        .resources(
          Ga4gh2.getMetadata.check(status is 200),
          MetaData.getConfigJson.check(status is 200),
          Curation.getNotifications.check(status is 200),
          // 1.12 only
          Categories.getCategories.check(status is 200)
        )
  )
}
