package io.dockstore

import io.gatling.core.Predef._
import io.gatling.http.Predef._

import java.util.UUID.randomUUID

object CreateAndUpdateHostedWorkflow {

  def workflowName() = randomUUID().toString

  val feeder = csv("tokens.csv").random

  val create = feed(feeder).exec(http("Create Hosted Workflow")
    .post("/workflows/hostedEntry?name=${workflowName()}&descriptorType=wdl")
    .header("Authorization", "Bearer ${token}")
    .check(status in(200, 201)) // Should be 201, but https://github.com/ga4gh/dockstore/issues/1859
    .check(jsonPath("$.id").saveAs("id")))
    .exec(http("Add file to Hosted Workflow")
      .patch("/workflows/hostedentry/${id}")
      .header("Authorization", "Bearer ${token}")
      .body(RawFileBody("CreateHostedSimulation_0011_request.txt"))
      .check(status is 200))
    .exec(http("Save new revision of Hosted Workflow")
      .patch("/workflows/hostedentry/${id}")
      .header("Authorization", "Bearer ${token}")
      .body(RawFileBody("CreateHostedSimulation_0018_request.txt"))
      .check(status is 200))

}


//val httpProtocol = http
//.baseUrl("http://coverbeck.hopto.org:8080")
//.inferHtmlResources(BlackList(""".*.css""", """.*.js""", """.*.ico""", """.*firefox.com/success.txt"""), WhiteList())
//.acceptHeader("application/json")
//.acceptEncodingHeader("gzip, deflate")
//.acceptLanguageHeader("en-US,en;q=0.5")
//.userAgentHeader("Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:62.0) Gecko/20100101 Firefox/62.0")
//
//val headers_0 = Map(
//"Accept" -> "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
//"Access-Control-Request-Headers" -> "authorization",
//"Access-Control-Request-Method" -> "POST",
//"Origin" -> "http://coverbeck.hopto.org:4200")
//
//val headers_1 = Map(
//"Authorization" -> "Bearer e1f123b060f72bef7c18f1a3e6b64f6ffeeb520f1a7720dd8f81e90488cb33f4",
//"Origin" -> "http://coverbeck.hopto.org:4200")
//
//val headers_2 = Map(
//"Accept" -> "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
//"Access-Control-Request-Headers" -> "authorization",
//"Access-Control-Request-Method" -> "GET",
//"Origin" -> "http://coverbeck.hopto.org:4200")
//
//val headers_6 = Map("Accept" -> "application/font-woff2;q=1.0,application/font-woff;q=0.9,*/*;q=0.8")
//
//val headers_10 = Map(
//"Accept" -> "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
//"Access-Control-Request-Headers" -> "authorization,content-type",
//"Access-Control-Request-Method" -> "PATCH",
//"Origin" -> "http://coverbeck.hopto.org:4200")
//
//val headers_11 = Map(
//"Authorization" -> "Bearer e1f123b060f72bef7c18f1a3e6b64f6ffeeb520f1a7720dd8f81e90488cb33f4",
//"Content-Type" -> "application/json",
//"Origin" -> "http://coverbeck.hopto.org:4200")
//
//val uri1 = "coverbeck.hopto.org"
//
//val scn = scenario("CreateHostedSimulation")
//.exec(http("request_0")
//.options("/workflows/hostedEntry?name=hosted1&descriptorType=wdl")
//.headers(headers_0)
//.resources(http("request_1")
//.post("/workflows/hostedEntry?name=hosted1&descriptorType=wdl")
//.headers(headers_1),
//http("request_2")
//.options("/workflows/6898")
//.headers(headers_2),
//http("request_3")
//.get("/workflows/6898")
//.headers(headers_1),
//http("request_4")
//.options("/workflows/path/workflow/dockstore.org%2Fcoverbeck%2Fhosted1/actions")
//.headers(headers_2),
//http("request_5")
//.get("/workflows/path/workflow/dockstore.org%2Fcoverbeck%2Fhosted1/actions")
//.headers(headers_1),
//http("request_6")
//.get("http://" + uri1 + ":4200/Gotham-BookItalic.otf")
//.headers(headers_6),
//http("request_7")
//.options("/workflows/path/workflow/dockstore.org%2Fcoverbeck%2Fhosted1/permissions")
//.headers(headers_2),
//http("request_8")
//.get("/workflows/path/workflow/dockstore.org%2Fcoverbeck%2Fhosted1/permissions")
//.headers(headers_1)
//.check(status.is(401)),
//http("request_9")
//.get("/workflows/path/workflow/dockstore.org%2Fcoverbeck%2Fhosted1/permissions")
//.headers(headers_1)
//.check(status.is(401))))
//.pause(54)
//.exec(http("request_10")
//.options("/workflows/hostedEntry/6898")
//.headers(headers_10)
//.resources(http("request_11")
//.patch("/workflows/hostedEntry/6898")
//.headers(headers_11)
//.body(RawFileBody("CreateHostedSimulation_0011_request.txt")),
//http("request_12")
//.get("/workflows/6898")
//.headers(headers_1),
//http("request_13")
//.get("/workflows/path/workflow/dockstore.org%2Fcoverbeck%2Fhosted1/actions")
//.headers(headers_1),
//http("request_14")
//.options("/workflows/6898/tools/17097")
//.headers(headers_2),
//http("request_15")
//.get("/workflows/path/workflow/dockstore.org%2Fcoverbeck%2Fhosted1/permissions")
//.headers(headers_1)
//.check(status.is(401)),
//http("request_16")
//.get("/workflows/path/workflow/dockstore.org%2Fcoverbeck%2Fhosted1/permissions")
//.headers(headers_1)
//.check(status.is(401)),
//http("request_17")
//.get("/workflows/6898/tools/17097")
//.headers(headers_1)))
//.pause(14)
//.exec(http("request_18")
//.patch("/workflows/hostedEntry/6898")
//.headers(headers_11)
//.body(RawFileBody("CreateHostedSimulation_0018_request.txt"))
//.resources(http("request_19")
//.get("/workflows/6898")
//.headers(headers_1),
//http("request_20")
//.get("/workflows/path/workflow/dockstore.org%2Fcoverbeck%2Fhosted1/actions")
//.headers(headers_1),
//http("request_21")
//.options("/workflows/6898/tools/17098")
//.headers(headers_2),
//http("request_22")
//.get("/workflows/6898/tools/17098")
//.headers(headers_1),
//http("request_23")
//.get("/workflows/path/workflow/dockstore.org%2Fcoverbeck%2Fhosted1/permissions")
//.headers(headers_1)
//.check(status.is(401)),
//http("request_24")
//.get("/workflows/path/workflow/dockstore.org%2Fcoverbeck%2Fhosted1/permissions")
//.headers(headers_1)
//.check(status.is(401))))
//
//setUp(scn.inject(atOnceUsers(1))).protocols(httpProtocol)
//}

