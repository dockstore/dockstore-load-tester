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

  private val everythingScenario = "Everything"

  val scenarios = Array(
    scenario("Account").feed(tokenFeeder).exec(Accounts.accountsPage),
    scenario("Home").exec(HomePage.open),
    scenario("HostedToolCrud").feed(tokenFeeder).exec(CreateAndUpdateHostedTool.create),
    scenario("HostedWorkflowCrud").feed(tokenFeeder).exec(CreateAndUpdateHostedWorkflow.create),
    scenario("MyWorkflows").feed(tokenFeeder).exec(MyWorkflows.myWorkflows),
    scenario("PublishRandomHostedWorkflow").feed(tokenFeeder).exec(HostedWorkflows.fetchRandomAndTogglePublish),
    scenario("SearchPage").exec(SearchPage.search),
    scenario("Starred").feed(tokenFeeder).exec(StarredToolsAndWorkflows.page),
    scenario("ToolsAndWorkflowsSearch").exec(ToolsPageSearch.search, WorkflowsPageSearch.search),
    scenario("ToolsSearch").exec(ToolsPageSearch.search),
    scenario("WorkflowsSearch").feed(tokenFeeder).exec(WorkflowsPageSearch.search),

    scenario(everythingScenario).feed(tokenFeeder).exec(
      HomePage.open,
      Accounts.accountsPage,
      ToolsPageSearch.search,
      WorkflowsPageSearch.search,
      SearchPage.search,
      CreateAndUpdateHostedWorkflow.create,
      HostedWorkflows.fetchRandomAndTogglePublish,
      MyWorkflows.myWorkflows,
      StarredToolsAndWorkflows.page
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

  getScenario(System.getProperty("scenario", everythingScenario)).map(sb => {
    val defaultMaxResponseTimeMs  = (10 seconds).toMillis.toInt

    val users = Integer.getInteger("users", 20)
    val rampMinutes = Integer.getInteger("rampMinutes", 5)
    val baseUrl = System.getProperty("baseUrl", "http://localhost:8080")
    val atOnce = "true".equals(System.getProperty("atOnce"))
    val maxResponseTimeMs = Integer.getInteger("maxResponseTimeMs", defaultMaxResponseTimeMs)
    val successThreshold = Integer.getInteger("successThreshold", 95).doubleValue()

    val httpProtocolBuilder = HttpProtocols.getProtocol(baseUrl)

    print(s"Executing for ${users} users, ")
    if (atOnce) print("all at once, ") else println(s"over ${rampMinutes} minutes, ")
    print(s"against ${baseUrl}.")
    println()

    def setupScenario = {
      if (atOnce) setUp(sb.inject(atOnceUsers(users))).protocols(httpProtocolBuilder)
      else setUp(sb.inject(rampUsers(users) during (rampMinutes minutes))).protocols(httpProtocolBuilder)
    }

    setupScenario.assertions(
      global.successfulRequests.percent.gt(successThreshold),
      global.responseTime.max.lt(maxResponseTimeMs) // milliseconds
    )
  })

}
