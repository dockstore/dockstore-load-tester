package io.dockstore

import io.gatling.core.Predef._
import io.gatling.core.structure.ScenarioBuilder

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

  private val tokenFeeder = csv("data/dummyUsersAndTokens.csv").random

  private val everythingScenario = "Everything"

  private val anonymousUsersScenario = "AnonymousUsers"

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
    scenario("NoDbApis").exec(NoDbApis.simple),
    scenario("TRS").exec(TRS.searchAndDrillDown),

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
    ),

    scenario(anonymousUsersScenario).exec(
      HomePage.open,
      ToolsPageSearch.search,
      WorkflowsPageSearch.search,
      SearchPage.search,
      TRS.searchAndDrillDown
    )

  )

  private def getAnonymousScenario = {
    scenarios.find(s => s.name equals(anonymousUsersScenario)).get
  }


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

  getScenario(System.getProperty("scenario", everythingScenario + "," + anonymousUsersScenario)).map(sb => {
    val defaultMaxResponseTimeMs  = (10 seconds).toMillis.toInt

    val authUsers = Integer.getInteger("authUsers", 20)
    val anonUsers = if (sb.name.equals(everythingScenario)) Integer.getInteger("anonUsers", 20) else new Integer(0)
    val rampMinutes = Integer.getInteger("rampMinutes", 5)
    val baseUrl = System.getProperty("baseUrl", "http://localhost:8080")
    val atOnce = "true".equals(System.getProperty("atOnce"))
    val maxResponseTimeMs = Integer.getInteger("maxResponseTimeMs", defaultMaxResponseTimeMs)
    val successThreshold = Integer.getInteger("successThreshold", 95).doubleValue()

    val httpProtocolBuilder = HttpProtocols.getProtocol(baseUrl)

    print(s"Executing for ${authUsers} authorized users and ${anonUsers} anonymous users, ")
    if (atOnce) print("all at once, ") else println(s"over ${rampMinutes} minutes, ")
    print(s"against ${baseUrl}, for scenario ${sb.name}")
    println()

    def setupScenario = {
      val authUsersRate = if (atOnce) atOnceUsers(authUsers) else rampUsers(authUsers) during(rampMinutes minutes)
      val anonUsersRate = if (atOnce) atOnceUsers(anonUsers) else rampUsers(anonUsers) during(rampMinutes minutes)
      val authUsersBuilder = sb.inject(authUsersRate)
      val anonUsersBuilder = getAnonymousScenario.inject(anonUsersRate);
      val populationBuilders = if (sb.name equals(everythingScenario)) List(authUsersBuilder, anonUsersBuilder) else List(authUsersBuilder)
      setUp(populationBuilders).protocols(httpProtocolBuilder)
    }

    setupScenario.assertions(
      global.successfulRequests.percent.gt(successThreshold),
      global.responseTime.max.lt(maxResponseTimeMs) // milliseconds
    )
  })

}
