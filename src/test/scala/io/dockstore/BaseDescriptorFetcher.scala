package io.dockstore

import io.gatling.core.Predef._

import java.net.URLEncoder
import java.nio.charset.StandardCharsets

class BaseDescriptorFetcher {

    /*
     * These values are the headers in data/workflows.csv and data/crawler.csv
     */
    private val trsId = "trsId"
    private val encodedTrsId = "encodedTrsId"

    def encodeTrsId(session: Session) = {
        session.set(encodedTrsId, URLEncoder.encode(session(trsId).as[String], StandardCharsets.UTF_8.toString))
    }

}
