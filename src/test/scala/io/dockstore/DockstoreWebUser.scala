package io.dockstore

import io.dockstore
import io.dockstore.release_1_9.{LoggedInHomepage, LoggedOutHomepage, Organizations, SearchPage}
import io.gatling.core.Predef._
import io.gatling.core.structure.ScenarioBuilder

import scala.concurrent.duration._
import scala.language.postfixOps

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

  private val loggedInUserFlow_1_9 = "LoggedIn_1.9"

  private val loggedOutUserFlow_1_9 = "LoggedOut_1_9"

  /**
   * Based on 1.11 prod usage statistics
   */
  private val terraFetchingDescriptors = "TerraFetchingDescriptors"
  private val terraWorkflowVersions = "TerraFetchingVersions"

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
    scenario("Metadata").exec(Metadata.go),
    scenario("LoggedOutHomePage1.9.0").exec(LoggedOutHomepage.loggedOutHomepage),
    scenario("LoggedInHomePage1.9.0").feed(tokenFeeder).exec(LoggedInHomepage.loggedInHomepage),
    scenario("Organizations1.9.0").feed(tokenFeeder).exec(Organizations.organizations),
    scenario("SearchPage1.9.0").exec(io.dockstore.release_1_9.SearchPage.search),

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
      TRS.searchAndDrillDown,
      Metadata.go
    ),

    scenario(loggedInUserFlow_1_9).feed(tokenFeeder).exec(
      LoggedInHomepage.loggedInHomepage,
      Accounts.accountsPage,
      io.dockstore.release_1_9.SearchPage.search,
      Organizations.organizations,
      CreateAndUpdateHostedWorkflow.create,
      HostedWorkflows.fetchRandomAndTogglePublish,
      MyWorkflows.myWorkflows,
      StarredToolsAndWorkflows.page
    ),

    scenario(loggedOutUserFlow_1_9).exec(
      LoggedOutHomepage.loggedOutHomepage,
      io.dockstore.release_1_9.SearchPage.search,
      TRS.searchAndDrillDown,
      Metadata.go
    ),

    scenario("jamboree").feed(tokenFeeder).exec(
      LoggedOutHomepage.loggedOutHomepage,
      io.dockstore.release_1_9.SearchPage.search,
      Organizations.organizations,
    ),

    scenario(terraFetchingDescriptors).exec(
      Terra.fetchDescriptor
    ),

    scenario(terraWorkflowVersions).exec(
      Terra.fetchWorkflowVersions
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

  val defaultMaxResponseTimeMs  = (10 seconds).toMillis.toInt
  val baseUrl = System.getProperty("baseUrl", "http://localhost:8080")
  val atOnce = "true".equals(System.getProperty("atOnce"))
  val maxResponseTimeMs = Integer.getInteger("maxResponseTimeMs", defaultMaxResponseTimeMs)
  val successThreshold = Integer.getInteger("successThreshold", 95).doubleValue()
  val httpProtocolBuilder = HttpProtocols.getProtocol(baseUrl).userAgentHeader("gatling")
  setUp(
    List(getScenario(terraFetchingDescriptors).map(sb => sb.inject(rampUsers(3000).during(2.minutes))).get,
      getScenario(terraWorkflowVersions).map(sb => sb.inject(rampUsers(4).during(2.minutes))).get)
  ).protocols(httpProtocolBuilder)

//  getScenario(System.getProperty("scenario", everythingScenario + "," + anonymousUsersScenario)).map(sb => {
//    val defaultMaxResponseTimeMs  = (10 seconds).toMillis.toInt
//
//    val authUsers = Integer.getInteger("authUsers", 20)
//    val anonUsers = if (sb.name.equals(everythingScenario)) Integer.getInteger("anonUsers", 20) else new Integer(0)
//    val rampMinutes = Integer.getInteger("rampMinutes", 5)
//    val baseUrl = System.getProperty("baseUrl", "http://localhost:8080")
//    val atOnce = "true".equals(System.getProperty("atOnce"))
//    val maxResponseTimeMs = Integer.getInteger("maxResponseTimeMs", defaultMaxResponseTimeMs)
//    val successThreshold = Integer.getInteger("successThreshold", 95).doubleValue()
//
//    val httpProtocolBuilder = HttpProtocols.getProtocol(baseUrl)
//
//    print(s"Executing for ${authUsers} authorized users and ${anonUsers} anonymous users, ")
//    if (atOnce) print("all at once, ") else println(s"over ${rampMinutes} minutes, ")
//    print(s"against ${baseUrl}, for scenario ${sb.name}")
//    println()
//
//    def setupScenario = {
//      val authUsersRate = if (atOnce) atOnceUsers(authUsers) else rampUsers(authUsers) during(rampMinutes minutes)
//      val anonUsersRate = if (atOnce) atOnceUsers(anonUsers) else rampUsers(anonUsers) during(rampMinutes minutes)
//      val authUsersBuilder = sb.inject(authUsersRate)
//      val anonUsersBuilder = getAnonymousScenario.inject(anonUsersRate);
//      val populationBuilders = if (sb.name equals(everythingScenario)) List(authUsersBuilder, anonUsersBuilder) else List(authUsersBuilder)
//      setUp(populationBuilders).protocols(httpProtocolBuilder)
//    }
//
//    setupScenario.assertions(
//      global.successfulRequests.percent.gt(successThreshold),
//      global.responseTime.max.lt(maxResponseTimeMs) // milliseconds
//    )
//  })

}
