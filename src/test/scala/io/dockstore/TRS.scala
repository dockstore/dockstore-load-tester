package io.dockstore

import io.dockstore.Requests.{Ga4gh, Ga4gh2}
import io.gatling.core.Predef._
import io.gatling.http.Predef._

object TRS {

  val searchAndDrillDown = exec(s => s)
    .doIfOrElse(s => math.random < .5) {
      exec(
        Ga4gh2.getTools
          .check(status is 200)
          .check(jsonPath("$[*].id").findRandom.transform(id => Utils.encode(id)).saveAs("id"))
      )
        .exec(
          Ga4gh2.getTool("${id}")
            .check(status is 200)
        )
    } {
      exec(
        Ga4gh.getTools
          .check(status is 200)
          .check(jsonPath("$[*].id").findRandom.transform(id => Utils.encode(id)).saveAs("id"))
      )
        .exec(
          Ga4gh.getTool("${id}")
            .check(status is 200)
        )
    }
}
