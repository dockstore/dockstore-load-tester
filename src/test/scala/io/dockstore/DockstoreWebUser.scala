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

  private val workflowsFeeder = csv("data/workflows.csv").circular


  private val anonymousUsersScenario = "AnonymousUsers"

  /**
   * Based on 1.11 prod usage statistics
   */
  private val terraFetchingDescriptors = "TerraFetchingDescriptors"
  private val terraWorkflowVersions = "TerraFetchingVersions"

  private val terraDescriptorScenario: ScenarioBuilder = scenario(terraFetchingDescriptors).feed(workflowsFeeder).exec(
    Terra.fetchDescriptor
  )
  private val terraVersionsScenario: ScenarioBuilder = scenario(terraWorkflowVersions).feed(workflowsFeeder).exec(
    Terra.fetchWorkflowVersions
  )
  private val jamboreeScenario: ScenarioBuilder = scenario("jamboree").exec(
    HomePage.loggedOutHomePage,
    io.dockstore.release_1_9.SearchPage.search,
    Organizations.organizations,
  )
  private val trsScenario: ScenarioBuilder = scenario("TRS").exec(TRS.searchAndDrillDown)

  val scenarios = Array(
    jamboreeScenario,
    terraDescriptorScenario,
    terraVersionsScenario.feed(workflowsFeeder),
  )

  private def calculateTrsRequestsForScenario(trsRequestsPerHour: Int, testTime: Int): Int = {
    trsRequestsPerHour * ((testTime / 60) + 1)
  }

  private def calculateTerraDescriptorRequestsForScenario(terraWorkflowRuns: Int, terraRequestsRps: Int, testTimeInMinutes: Int) = {
    val requestsPerMinute = terraWorkflowRuns * terraRequestsRps * 60
    requestsPerMinute * testTimeInMinutes
  }

  val defaultMaxResponseTimeMs  = Duration(10, "second").toMillis.toInt
  val baseUrl = System.getProperty("baseUrl", "http://localhost:4200")
  val maxResponseTimeMs = Integer.getInteger("maxResponseTimeMs", defaultMaxResponseTimeMs)
  val successThreshold = Integer.getInteger("successThreshold", 95).doubleValue()
  val testTime = Integer.getInteger("timeInMinutes")
  val terraWorkflowRuns = Integer.getInteger("terraWorkflowRuns")
  val terraRequestsRps = Integer.getInteger("terraRequestsRps")
  val webSiteUsers = Integer.getInteger("webSiteUsers")
  val gitHubAppRpm = Integer.getInteger("gitHubAppRpm")
  val trsRequestsPerHour = Integer.getInteger("trsRequestsPerHour")

  val httpProtocolBuilder = HttpProtocols.getProtocol(baseUrl).userAgentHeader("gatling")

  val trsRequestsForScenario = calculateTrsRequestsForScenario(trsRequestsPerHour, testTime)
  val terraDescriptorRequests: Int = calculateTerraDescriptorRequestsForScenario(terraWorkflowRuns, terraRequestsRps, testTime)
  val testTimeDuration = Duration(testTime.longValue(), "minute")

  setUp(
    List(
      terraVersionsScenario.inject(atOnceUsers(terraWorkflowRuns)),
      terraDescriptorScenario.inject(rampUsers(terraDescriptorRequests).during(testTimeDuration)),
      jamboreeScenario.inject(
        rampUsers(webSiteUsers).during(testTimeDuration)
      ),
      trsScenario.inject(rampUsers(trsRequestsForScenario).during(testTimeDuration))
    )
  ).protocols(httpProtocolBuilder)

}
