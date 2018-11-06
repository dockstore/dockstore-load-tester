package io.dockstore

import io.gatling.core.Predef._
import io.gatling.core.structure.ScenarioBuilder
import io.gatling.http.protocol.HttpProtocolBuilder

import scala.concurrent.duration._

/**
  * Simulates a Dockstore Web User
  *
  * <ol>
  * <li>Goes to home page</li>
  * <li>Goes to tools page, searches for a random tool and drills into it</li>
  * <li>Goes to workflows page, searches for a random workflow and drills into it</li>
  * <li>Goes to search page, searches for a random author</li>
  * <li>Creates a hosted workflow, adds a file to it, then saves another version</li>
  * <li>Fetches a user's workflows, then
  * </ol>
  */
class DockstoreWebUser extends Simulation {

  private val tokenFeeder = csv("data/tokens.csv").random

  val scenarios = Array(
    scenario("HostedWorkflowCrud").feed(tokenFeeder).exec(CreateAndUpdateHostedWorkflow.create),
    scenario("HostedToolCrud").feed(tokenFeeder).exec(CreateAndUpdateHostedTool.create),
    scenario("Home").exec(HomePage.open),
    scenario("ToolsSearch").exec(ToolsPageSearch.search),
    scenario("WorkflowsSearch").exec(WorkflowsPageSearch.search),
    scenario("ToolsAndWorkflowsSearch").exec(ToolsPageSearch.search, WorkflowsPageSearch.search),
    scenario("SearchPage").exec(SearchPage.search),
    scenario("PublishRandomHostedWorkflow").feed(tokenFeeder).exec(HostedWorkflows.fetchRandomAndTogglePublish),
    scenario("Account").feed(tokenFeeder).exec(Accounts.accountsPage),
    scenario("MyWorkflows").feed(tokenFeeder).exec(MyWorkflows.myWorkflows),
    scenario("Everything").feed(tokenFeeder).exec(
      HomePage.open,
      Accounts.accountsPage,
      ToolsPageSearch.search,
      WorkflowsPageSearch.search,
      SearchPage.search,
      CreateAndUpdateHostedWorkflow.create,
      HostedWorkflows.fetchRandomAndTogglePublish,
      MyWorkflows.myWorkflows
    )
  )


  private def getScenario(scenarioName: String) = {
    println("scenario is " + scenarioName)
    val maybeBuilder: Option[ScenarioBuilder] = scenarios.find(sb => sb.name equals(scenarioName))
    if (!maybeBuilder.isDefined) {
      println(s"Invalid scenario name ${scenarioName}.")
      println("Valid scenario names are: ")
      scenarios.foreach(sb => println(s"\t${sb.name}"))
    }
    maybeBuilder
  }

  getScenario(System.getProperty("scenario", "Everything")).map(sb => {
    val users = Integer.getInteger("users", 20)
    val rampMinutes = Integer.getInteger("rampMinutes", 5)
    val baseUrl = System.getProperty("baseUrl", "http://localhost:8080")
    val atOnce = "true".equals(System.getProperty("atOnce"))

    val httpProtocolBuilder = HttpProtocols.getProtocol(baseUrl)

    print(s"Executing for ${users} users, ")
    if (atOnce) print("all at once, ") else println(s"over ${rampMinutes} minutes, ")
    print(s"against ${baseUrl}.")
    println()

    if (atOnce) setUp(sb.inject(atOnceUsers(users))).protocols(httpProtocolBuilder)
    else setUp(sb.inject(rampUsers(users) during (rampMinutes minutes))).protocols(httpProtocolBuilder)
  })

}
