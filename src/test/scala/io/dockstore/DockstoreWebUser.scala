package io.dockstore

import io.dockstore
import io.dockstore.DockstoreWebUser.{CURATOR_TOKEN, INSTALLATION_ID}
import io.dockstore.release_1_9.{LoggedInHomepage, LoggedOutHomepage, Organizations, SearchPage}
import io.gatling.core.Predef._
import io.gatling.core.feeder.Record
import io.gatling.core.structure.{PopulationBuilder, ScenarioBuilder}

import scala.::
import scala.collection.mutable
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

  val defaultMaxResponseTimeMs  = Duration(10, "second").toMillis.toInt
  val baseUrl = System.getProperty("baseUrl", "http://localhost:4200")
  val maxResponseTimeMs = Integer.getInteger("maxResponseTimeMs", defaultMaxResponseTimeMs)
  val successThreshold = Integer.getInteger("successThreshold", 95).doubleValue()
  val scenarioTime = Integer.getInteger("timeInMinutes")
  val terraWorkflowRuns = Integer.getInteger("terraWorkflowRuns")
  val terraRequestsRps = Integer.getInteger("terraRequestsRps")
  val webSiteUsers = Integer.getInteger("webSiteUsers")
  val gitHubAppRpm = Integer.getInteger("gitHubAppRpm")
  val trsRequestsPerHour = Integer.getInteger("trsRequestsPerHour")
  val githubNotificationsPerHour = Integer.getInteger("githubNotificationsPerHour")
  val workflowRunsFeeder = csv("data/workflows.csv").circular
  val gitHubAppFeeder = csv("data/githubRefresh.csv").circular

  val terraFetchingDescriptors = "TerraFetchingDescriptors"
  val terraWorkflowVersions = "TerraFetchingVersions"

  val terraDescriptorScenario: ScenarioBuilder = scenario(terraFetchingDescriptors).feed(workflowRunsFeeder).exec(
    Terra.fetchDescriptor
  )
  val terraVersionsScenario: ScenarioBuilder = scenario(terraWorkflowVersions).feed(workflowRunsFeeder).exec(
    Terra.fetchWorkflowVersions
  )
  val webUserScenario: ScenarioBuilder = scenario("jamboree").exec(
    HomePage.loggedOutHomePage,
    io.dockstore.release_1_9.SearchPage.search,
    Organizations.organizations,
    WorkflowsPageSearch.search,
    ToolsPageSearch.search
  )
  val trsScenario: ScenarioBuilder = scenario("TRS").exec(TRS.searchAndDrillDown)
  val workflowRefreshScenario = scenario("Workflow Refresh").feed(gitHubAppFeeder).exec(WorkflowRefresh.gitHubApp)


  private def calculateRequestsForScenario(requestsPerHour: Int, testTime: Int): Int = {
    requestsPerHour * ((testTime / 60) + 1)
  }

  private def calculateTerraDescriptorRequestsForScenario(terraWorkflowRuns: Int, terraRequestsRps: Int, testTimeInMinutes: Int) = {
    val requestsPerMinute = terraWorkflowRuns * terraRequestsRps * 60
    requestsPerMinute * testTimeInMinutes
  }

  private def getScenarios() = {
    val scenarios = ListBuffer(
      //      terraVersionsScenario.inject(atOnceUsers(terraWorkflowRuns)),
      //      terraDescriptorScenario.inject(rampUsers(terraDescriptorRequests).during(testTimeDuration)),
      webUserScenario.inject(rampUsers(webSiteUsers).during(scenarioTimeDuration)),
      //      trsScenario.inject(rampUsers(trsRequestsForScenario).during(testTimeDuration))
    )
    // If we have a token and an installation id, do the workflow refreshes
    if (System.getProperty(INSTALLATION_ID) != null && System.getProperty(CURATOR_TOKEN) != null) {
      scenarios += workflowRefreshScenario.inject(rampUsers(githubRequestsForScenario).during(scenarioTime))
    }
    scenarios.toList
  }

  val httpProtocolBuilder = HttpProtocols.getProtocol(baseUrl).userAgentHeader("gatling")

  val trsRequestsForScenario = calculateRequestsForScenario(trsRequestsPerHour, scenarioTime)
  val terraDescriptorRequests: Int = calculateTerraDescriptorRequestsForScenario(terraWorkflowRuns, terraRequestsRps, scenarioTime)
  val scenarioTimeDuration = Duration(scenarioTime.longValue(), "minute")
  val githubRequestsForScenario: Int = calculateRequestsForScenario(gitHubAppRpm, scenarioTime)


  setUp(
    getScenarios()
  ).protocols(httpProtocolBuilder)

}

object DockstoreWebUser {
  val CURATOR_TOKEN = "curatorToken"
  val INSTALLATION_ID = "installationId"
}
