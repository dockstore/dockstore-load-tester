package io.dockstore

import io.gatling.core.Predef._
import io.gatling.http.Predef._

object NoDbApis {

  val simple = exec(
    Requests.Ga4gh2Beta.getMetadata
      .check(status is 200)
  ).exec(
    Requests.MetaData.getSourceControlList
      .check(status is 200)
  )
}
