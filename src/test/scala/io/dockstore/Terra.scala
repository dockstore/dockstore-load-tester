package io.dockstore

import io.dockstore.Requests.Ga4gh
import io.gatling.core.Predef._
import io.gatling.http.Predef._

/**
 * Simulates request patterns made by Terra against Dockstore
 *
 */
object Terra extends BaseDescriptorFetcher {

    val fetchDescriptor = {
        exec(session => encodeTrsId(session))
        .exec(
            Ga4gh.getToolDescriptor()
                .check(status is 200)

        )
    }

    val fetchWorkflowVersions = {
        exec(session => encodeTrsId(session))
        .exec(
            Ga4gh.getToolVersions()
                .check(status is 200)
        )
    }
}
