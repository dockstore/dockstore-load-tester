package io.dockstore

import io.gatling.core.Predef._
import io.gatling.http.Predef._

object HttpProtocols {

  val baseHttpProtocol = http.acceptHeader("application/json").acceptEncodingHeader("gzip, deflate")

  val localhostHttpProtocol = baseHttpProtocol
    .baseUrl("http://localhost:8080")

  val alphaHttpProtocol = baseHttpProtocol
    .baseUrl("https://dockstore.org")

  val stagingHttpProtocol = baseHttpProtocol
    .baseUrl("https://staging.dockstore.org")

  val productionHttpProtocol = baseHttpProtocol
    .baseUrl("https://alpha.dockstore.org")

}
