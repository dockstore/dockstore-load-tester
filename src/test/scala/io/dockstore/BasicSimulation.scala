package io.dockstore

import io.gatling.core.Predef._

import scala.concurrent.duration._

class BasicSimulation extends Simulation {


//  val scn = scenario("Home Page").exec(HomePage.open, WorkflowsPageSearch.search)

  val scn = scenario("Create and Update Hosted Workflow").exec(CreateAndUpdateHostedWorkflow.create(45))
  setUp(scn.inject(atOnceUsers(1))).protocols(HttpProtocols.localhostHttpProtocol)
//  setUp(scn.inject(rampUsers(30) during(60 seconds))).protocols(HttpProtocols.localhostHttpProtocol)
}