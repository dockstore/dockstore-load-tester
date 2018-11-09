package io.dockstore

import io.gatling.core.Predef._
import io.gatling.http.Predef._

object HttpProtocols {

  val baseHttpProtocol = http.acceptHeader("application/json").acceptEncodingHeader("gzip, deflate")

  /**
    * Returns an HttpProtocolBuilder for the specified baseUrl. The baseUrl should include the protocol and domain, e.g.,
    * http://localhost:8080, https://alpha.dockstore.org, etc.
    * @param baseUrl
    * @return
    */
  def getProtocol(baseUrl: String) = baseHttpProtocol.baseUrl(baseUrl)

}
