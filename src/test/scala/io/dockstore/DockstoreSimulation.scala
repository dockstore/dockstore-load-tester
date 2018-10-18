package io.dockstore

import io.gatling.core.Predef._

import scala.concurrent.duration._

class DockstoreSimulation extends Simulation {

  private val tokenFeeder = csv("data/tokens.csv").random

  val createAndUpdateHostedWorkflow = scenario("Create and Update Hosted Workflow").feed(tokenFeeder).exec(CreateAndUpdateHostedWorkflow.create)

  val homePage = scenario("Home Page").exec(HomePage.open)
  val toolsPageSearch = scenario("Tools Page Search and Navigate").exec(ToolsPageSearch.search)
  val workflowsPageSearch = scenario("Workflows Page Search and Navigate").exec(WorkflowsPageSearch.search)
  val toolsAndWorkflowsSearches = scenario("Tools and Workflows List, Search, and Go to item").exec(ToolsPageSearch.search, WorkflowsPageSearch.search)
  val searchPage = scenario("Search Page").exec(SearchPage.search)

//  val theScenario = toolsAndWorkflowsSearches
//  val theScenario = toolsPageSearch
//  val  theScenario = searchPage

  val theScenario = createAndUpdateHostedWorkflow

  setUp(theScenario.inject(atOnceUsers(6))).protocols(HttpProtocols.localhostHttpProtocol)
//  setUp(scn.inject(atOnceUsers(5))).protocols(HttpProtocols.localhostHttpProtocol)
  //  setUp(scn.inject(rampUsers(20) during(30 seconds))).protocols(HttpProtocols.localhostHttpProtocol)
}