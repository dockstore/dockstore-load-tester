package io.dockstore.tools

import java.sql.DriverManager

object UserGenerator {

  def main(args: Array[String]): Unit = {
    Class.forName("org.postgresql.Driver")
    DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "dockstore", "dockstore")
  }
}
