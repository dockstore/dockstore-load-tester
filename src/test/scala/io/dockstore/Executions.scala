package io.dockstore

import io.dockstore.Requests.ExtendedGa4gh
import io.gatling.core.Predef._
import io.gatling.http.Predef._

import java.net.URLEncoder
import java.nio.charset.StandardCharsets
import java.util.UUID

object Executions extends BaseDescriptorFetcher {
    val postExecution = exec(session => encodeTrsId(session)
        .set("executionId", UUID.randomUUID().toString)
        .set("encodedVersion", URLEncoder.encode(session("version").as[String], StandardCharsets.UTF_8.toString)))
        .exec(
            ExtendedGa4gh.postExecution()
        )

}
