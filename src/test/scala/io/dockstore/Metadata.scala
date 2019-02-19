package io.dockstore

import io.gatling.core.Predef._
import io.gatling.http.Predef._

object Metadata {

  val go = exec(
    // This is not called frequently in real life, so only invoke it 5% of the time, which is still pretty high.
    doIf(s => math.random < .05) {
      exec(
        Requests.MetaData.getSitemap
          .check(status is 200)
      )
    }
  )

}
