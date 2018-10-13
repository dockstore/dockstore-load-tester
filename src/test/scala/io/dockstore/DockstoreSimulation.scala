package io.dockstore

import io.gatling.core.Predef._

import scala.concurrent.duration._

class DockstoreSimulation extends Simulation {


    val scn = scenario("Home Page").exec(HomePage.open, WorkflowsPageSearch.search, CreateAndUpdateHostedWorkflow.create)

  setUp(scn.inject(atOnceUsers(1))).protocols(HttpProtocols.localhostHttpProtocol)
//  setUp(scn.inject(rampUsers(20) during(30 seconds))).protocols(HttpProtocols.localhostHttpProtocol)
}