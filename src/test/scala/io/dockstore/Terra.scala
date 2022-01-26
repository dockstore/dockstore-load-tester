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
    private val workflowId = "workflowId"
    private val workflowVersion = "workflowVersion"
    private val descriptorType = "descriptorType"
    private val encodedWorkflowId = "encodedWorkflowId"

    val fetchDescriptor = {
        exec(session => session.set(encodedWorkflowId, URLEncoder.encode(session(workflowId).as[String], StandardCharsets.UTF_8.toString)))
        .exec(
            Ga4gh.getToolDescriptor(encodedWorkflowId, workflowVersion, descriptorType)
                .check(status is 200)

        )
    }

    val fetchWorkflowVersions =
        exec(session => session.set(encodedWorkflowId, URLEncoder.encode(session(workflowId).as[String], StandardCharsets.UTF_8.toString)))
        exec(
            Ga4gh.getToolVersions(encodedWorkflowId)
                .check(status is 200)
        )
}
