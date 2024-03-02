package io.dockstore

import io.dockstore.DockstoreWebUser.{CURATOR_TOKEN, INSTALLATION_ID}
import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.{PopulationBuilder, ScenarioBuilder}

import scala.collection.mutable.ListBuffer
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

  /* Place for arbitrary Scala code that is to be executed after the simulation has ended. */
  after {
    println("***** My simulation has ended! ******")
  }

  val defaultMaxResponseTimeMs  = Duration(10, "second").toMillis.toInt
  val baseUrl = System.getProperty("baseUrl", "http://localhost:4200")
  val maxResponseTimeMs = Integer.getInteger("maxResponseTimeMs", defaultMaxResponseTimeMs)
  val successThreshold = Integer.getInteger("successThreshold", 95).doubleValue()
  val terraRequestsRps = Integer.getInteger("terraRequestsRps")
  val crawlerRequestsRps = Integer.getInteger("crawlerRequestsRps")
  val webSiteUsers = Integer.getInteger("webSiteUsers")
  val gitHubAppRpm = Integer.getInteger("githubNotificationsPerHour")
  val trsRequestsPerHour = Integer.getInteger("trsRequestsPerHour")
  val githubNotificationsPerHour = Integer.getInteger("githubNotificationsPerHour")
  val metricsRequestPerMinute = Integer.getInteger("metricsRequestsPerMinute").toInt
  val workflowRunsFeeder = csv("data/workflows.csv").circular
  val crawlerFeeder = csv("data/crawler.csv").circular
  val gitHubAppFeeder = csv("data/githubRefresh.csv").circular
  val executionsFeeder = csv("data/cwlPublishedVersions.csv").circular

  val terraFetchingDescriptors = "TerraFetchingDescriptors"
  val terraWorkflowVersions = "TerraFetchingVersions"
  val crawlerScenarioName = "CrawlerScenario"
  val executionsScenarioName ="ExecutionsScenario"

  val terraDescriptorScenario: ScenarioBuilder = scenario(terraFetchingDescriptors).feed(workflowRunsFeeder).exec(
    Terra.fetchDescriptor
  )
  val terraVersionsScenario: ScenarioBuilder = scenario(terraWorkflowVersions).feed(workflowRunsFeeder).exec(
    Terra.fetchWorkflowVersions
  )
  val crawlerScenario: ScenarioBuilder = scenario(crawlerScenarioName).feed(crawlerFeeder).exec(
    Crawler.fetchDescriptor
  )
  val webUserScenario: ScenarioBuilder = scenario("Web User").exec(
    HomePage.loggedOutHomePage,
    SearchPage.search,
    Organizations.organizations,
    WorkflowsPageSearch.search,
    ToolsPageSearch.search
  )
  val trsScenario: ScenarioBuilder = scenario("TRS").exec(TRS.searchAndDrillDown)
  val executionsScenario = scenario(executionsScenarioName).feed(executionsFeeder).exec(
    Executions.postExecution
  )

  private def calculateRequestsForScenario(requestsPerHour: Int, testTime: Int): Int = {
    requestsPerHour * ((testTime / 60) + 1)
  }

  private def calculateTotalRequests(requestsPerSecond: Int, testTimeInMinutes: Int) = {
    requestsPerSecond * 60 * testTimeInMinutes
  }

  private def getScenarios() = {
    val scenarioTimeInMinutes = Integer.getInteger("timeInMinutes").toInt
    val trsRequestsForScenario = calculateRequestsForScenario(trsRequestsPerHour, scenarioTimeInMinutes)
    val terraDescriptorRequests: Int = calculateTotalRequests(terraRequestsRps, scenarioTimeInMinutes)
    val crawlerRequests = calculateTotalRequests(crawlerRequestsRps, scenarioTimeInMinutes)
    val scenarioTimeDuration = Duration(scenarioTimeInMinutes.longValue(), "minute")
    val scenarios = ListBuffer(
      terraDescriptorScenario.inject(rampUsers(terraDescriptorRequests).during(scenarioTimeDuration)),
      terraVersionsScenario.inject(rampUsers(webSiteUsers).during(scenarioTimeDuration)),
      webUserScenario.inject(rampUsers(webSiteUsers).during(scenarioTimeDuration)),
      trsScenario.inject(rampUsers(trsRequestsForScenario).during(scenarioTimeDuration))
    )

    if (System.getProperty(CURATOR_TOKEN) != null) {
      val totalExecutionRequests = (scenarioTimeInMinutes * metricsRequestPerMinute)
      scenarios += executionsScenario.inject(rampUsersPerSec(1).to(totalExecutionRequests).during(scenarioTimeDuration))
      // If we have a token and an installation id, do the workflow refreshes
      if (System.getProperty(INSTALLATION_ID) != null) {
        val workflowRefreshScenario = scenario("Workflow Refresh").feed(gitHubAppFeeder).exec(WorkflowRefresh.gitHubApp)
        scenarios += workflowRefreshScenario.inject(
          rampUsers(calculateRequestsForScenario(gitHubAppRpm, scenarioTimeInMinutes)).during(scenarioTimeDuration))
      }
    }
    // Crawler data is currently staging-biased
    if (baseUrl.contains("staging")) scenarios += crawlerScenario.inject(rampUsers(crawlerRequests).during(scenarioTimeDuration))
    val scenarioName = System.getProperty("scenario")
    if (scenarioName != null) scenarios.find(_.scenarioBuilder.name == scenarioName).toList
    else scenarios.toList
  }

  // Set a header so the AWS WAF doesn't block requests
  val httpProtocolBuilder = HttpProtocols.getProtocol(baseUrl).userAgentHeader("gatling")

  setUp(
    getScenarios()
  ).protocols(httpProtocolBuilder)

}

object DockstoreWebUser {
  val CURATOR_TOKEN = "curatorToken"
  val INSTALLATION_ID = "installationId"
}
