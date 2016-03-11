#!/bin/sh
# From http://alvinalexander.com/scala/scala-shell-script-example-exec-syntax
# which added class to http://www.scala-lang.org/documentation/getting-started.html
# This embed Scala script inside a shell script
# (rather than a shell script calling a Scala program):
# Before calling this, run: chmod a+x hello.sh
# Call from   command line: ./rn hello.sh
exec scala "$0" "$@"
!#

case class Person(name: String)

object HelloWorld {
  def main(args: Array[String]) {
    val al = Person("Al")
    println($NOW)
  }
}

HelloWorld.main(args)
// The expected output is always "Person(Al)".