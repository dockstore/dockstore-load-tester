package io.dockstore

import java.net.URLEncoder

object Utils {

  def encode(element: String): String = {
    URLEncoder.encode(element)
  }

  def encodeWorkflow(path: String): String = {
    URLEncoder.encode("#workflow/" + path)
  }
}
