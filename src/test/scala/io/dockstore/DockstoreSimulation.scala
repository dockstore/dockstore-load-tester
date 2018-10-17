package io.dockstore

import io.gatling.core.Predef._

import scala.concurrent.duration._

class DockstoreSimulation extends Simulation {


//  val scn = scenario("Home Page").exec(HomePage.open, WorkflowsPageSearch.search, CreateAndUpdateHostedWorkflow.create)

  val toolsPageSearch = scenario("Tools Page Search and Navigate").exec(ToolsPageSearch.search)
  val workflowsPageSearch = scenario("Tools Page Search and Navigate").exec(WorkflowsPageSearch.search)
  val toolsAndWorkflowsSearches = scenario("Tools and Workflows List, Search, and Go to item").exec(ToolsPageSearch.search, WorkflowsPageSearch.search)

//  val theScenario = toolsAndWorkflowsSearches
  val theScenario = toolsPageSearch

  setUp(theScenario.inject(atOnceUsers(6))).protocols(HttpProtocols.localhostHttpProtocol)
//  setUp(scn.inject(atOnceUsers(5))).protocols(HttpProtocols.localhostHttpProtocol)
  //  setUp(scn.inject(rampUsers(20) during(30 seconds))).protocols(HttpProtocols.localhostHttpProtocol)
}