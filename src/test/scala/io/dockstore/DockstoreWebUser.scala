package io.dockstore

import io.gatling.core.Predef._

import scala.concurrent.duration._

/**
  * Simulates a Dockstore Web User
  *
  * <ol>
  *   <li>Goes to home page</li>
  *   <li>Goes to tools page, searches for a random tool and drills into it</li>
  *   <li>Goes to workflows page, searches for a random workflow and drills into it</li>
  *   <li>Goes to search page, searches for a random author</li>
  *   <li>Creates a hosted workflow, adds a file to it, then saves another version</li>
  *   <li>Fetches a user's workflows, then
  * </ol>
  */
class DockstoreWebUser extends Simulation {

  private val tokenFeeder = csv("data/tokens.csv").random

  val createAndUpdateHostedWorkflow = scenario("Create and Update Hosted Workflow").feed(tokenFeeder).exec(CreateAndUpdateHostedWorkflow.create)
  val createAndUpdateHostedTool = scenario("Create and Update Hosted Tool").feed(tokenFeeder).exec(CreateAndUpdateHostedTool.create)

  val homePage = scenario("Home Page").exec(HomePage.open)
  val toolsPageSearch = scenario("Tools Page Search and Navigate").exec(ToolsPageSearch.search)
  val workflowsPageSearch = scenario("Workflows Page Search and Navigate").exec(WorkflowsPageSearch.search)
  val toolsAndWorkflowsSearches = scenario("Tools and Workflows List, Search, and Go to item").exec(ToolsPageSearch.search, WorkflowsPageSearch.search)
  val searchPage = scenario("Search Page").exec(SearchPage.search)

  val fetchHostedWorkflows = scenario("Fetch hosted workflows and tools").feed(tokenFeeder).exec(HostedWorkflows.fetchRandomAndTogglePublish)

  val accountsPage = scenario("Visit Accounts Page").feed(tokenFeeder).exec(Accounts.accountsPage)


  val everything = scenario("Everything").feed(tokenFeeder).exec(
    HomePage.open,
    Accounts.accountsPage,
    ToolsPageSearch.search,
    WorkflowsPageSearch.search,
    SearchPage.search,
    CreateAndUpdateHostedWorkflow.create,
    HostedWorkflows.fetchRandomAndTogglePublish
  )

//  val theScenario = toolsAndWorkflowsSearches
//  val theScenario = toolsPageSearch
//  val  theScenario = searchPage

//  val theScenario = createAndUpdateHostedWorkflow
//  val theScenario = createAndUpdateHostedTool
//  val theScenario = fetchHostedWorkflows

//  val theScenario = accountsPage

//  val theScenario = workflowsPageSearch

  val theScenario = everything

  setUp(theScenario.inject(atOnceUsers(2))).protocols(HttpProtocols.localhostHttpProtocol)
//    setUp(theScenario.inject(rampUsers(30) during(10 minutes))).protocols(HttpProtocols.localhostHttpProtocol)
}