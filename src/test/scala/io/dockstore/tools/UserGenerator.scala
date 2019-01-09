package io.dockstore.tools

import java.io.{BufferedWriter, File, FileWriter}

import scala.io.Source

object UserGenerator {

  def main(args: Array[String]): Unit = {
    val lines = Source.fromResource("data/dummyUsersAndTokens.csv").getLines()
    val sqlFile = new File("dummyusers.sql")
    val writer = new BufferedWriter(new FileWriter(sqlFile))
    writer.write("-- This file generated from dummyUsersAndTokens.csv with UserGenerator.scala")
    writer.newLine()
    lines
      .drop(1) // Drop the header line
      .foreach(line => {
      val columns = line.split(",")
      val username = columns(0)
      val token = columns(1)
      val sql = s"""
         |with row as (
         |  insert into enduser (username, isAdmin) values ('${username}', false) returning id
         |)
         |insert into token (content, tokensource, userid, username)
         |select '${token}', 'dockstore', id, '${username}' from row;""".stripMargin
        writer.write(sql)
        writer.newLine()
      })
    writer.close()
  }
}
