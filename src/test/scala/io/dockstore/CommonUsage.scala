package io.dockstore

import io.gatling.core.Predef._
import io.gatling.http.Predef._

object CommonUsage {

    val homeHead = exec(
      http("Home page HEAD")
          .head("/")
    )

    val swaggerHead = exec(
        http("Swagger HEAD")
            .head("/api/swagger.json")
    )

}
