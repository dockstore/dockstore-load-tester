package io.dockstore

import io.dockstore.Requests.Ga4gh2
import io.gatling.core.Predef._
import io.gatling.http.Predef._

/**
 * Simulates, currently only partially, the calls being made by a bot crawling our TRS API
 */
object Crawler extends BaseDescriptorFetcher {

    val fetchDescriptor = {
        exec(session => encodeTrsId(session))
            .exec(
                Ga4gh2.getPlainDescriptor()
                    .check(status is 200)

            )
    }

}
