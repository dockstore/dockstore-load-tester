package io.dockstore

import io.dockstore.Requests.Ga4gh
import io.gatling.core.Predef._
import io.gatling.http.Predef._

import java.net.URLEncoder
import java.nio.charset.StandardCharsets

/**
 * Simulates request patterns made by Terra against Dockstore
 *
 */
object Terra {

    /*
     * These values are the headers in data/workflows.csv
     */
    private val trsId = "trsId"
    private val encodedTrsId = "encodedTrsId"

    val fetchDescriptor = {
        exec(session => session.set(encodedTrsId, URLEncoder.encode(session(trsId).as[String], StandardCharsets.UTF_8.toString)))
        .exec(
            Ga4gh.getToolDescriptor()
                .check(status is 200)

        )
    }

    val fetchWorkflowVersions = {
        exec(session => session.set(encodedTrsId, URLEncoder.encode(session(trsId).as[String], StandardCharsets.UTF_8.toString)))
        .exec(
            Ga4gh.getToolVersions()
                .check(status is 200)
        )
    }
}
