package io.dockstore

import java.net.URLEncoder

import scala.util.Random

object Utils {

  private val AVERAGE_SIZE_OF_ENTRY = 12000 // Assume the average workflow is this size
  private val COMMENT_LINE_LENGTH = 50 // An arbitrary value
  private val AVERAGE_NUMBER_OF_COMMENTS = AVERAGE_SIZE_OF_ENTRY / COMMENT_LINE_LENGTH
  private val ONE_STANDARD_DEVIATION = AVERAGE_NUMBER_OF_COMMENTS * .68

  def encode(element: String): String = {
    URLEncoder.encode(element)
  }

  def encodeWorkflow(path: String): String = {
    URLEncoder.encode("#workflow/" + path)
  }

  /**
    * The WDL template is trivial in size. Generate a random number of comments to make the final WDL
    * larger. We assume the average workflow is AVERAGE_SIZE_OF_ENTRY bytes in length,
    * so generate enough comments to make a standard distribution of comments around the mean of
    * AVERAGE_SIZE_OF_ENTRY.
    * @return a string of multiple comments separated by newline characters
    */
  def randomWdlComments: String = {

    def numberOfLinesToGenerate = {
      // See https://www.javamex.com/tutorials/random_numbers/gaussian_distribution_2.shtml
      Math.round(Random.nextGaussian() * ONE_STANDARD_DEVIATION + AVERAGE_NUMBER_OF_COMMENTS).intValue()
    }

    val sb = new StringBuilder
    for (i <- 1 until numberOfLinesToGenerate) {
      sb.append(s"\\n# ${Random.alphanumeric take COMMENT_LINE_LENGTH mkString}")
    }
    sb.mkString
  }
}
