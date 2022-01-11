package io.dockstore

import io.dockstore.Requests.Ga4gh
import io.gatling.core.Predef._
import io.gatling.http.Predef._

import java.net.URLEncoder
import java.nio.charset.StandardCharsets

/**
 * Simulates request patterns made by Terra against Dockstore
 */
object Terra {
    private val encodedTRSId: String = URLEncoder.encode("#workflow/github.com/gatk-workflows/seq-format-conversion/BAM-to-Unmapped-BAM", StandardCharsets.UTF_8.toString)
    // GET /api/api/ga4gh/v1/tools/%23workflow%2Fgithub.com%2Ftheiagen%2Fpublic_health_viral_genomics%2FTitan_FASTA/versions/v1.5.3/WDL/descriptor HTTP/1.1
    val fetchDescriptor = exec(
//            Ga4gh.getToolDescriptor("%23workflow%2Fgithub.com%2Ftheiagen%2Fpublic_health_viral_genomics%2FTitan_FASTA", "v1.5.3", "WDL")
            Ga4gh.getToolDescriptor(encodedTRSId, "3.0.0", "WDL")
                .check(status is 200)
        )

    val fetchWorkflowVersions = exec(
        Ga4gh.getToolVersions(encodedTRSId)
            .check(status is 200)
    )
}
