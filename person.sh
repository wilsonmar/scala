#!/bin/sh
# At person.sh within https://github.com/wilsonmar/scala

# This embeds Scala script inside a shell script
# Before calling this, run: chmod a+x person.sh
# Call from   command line: ./rn person.sh
# (rather than a shell script calling a Scala program):

# Based on http://alvinalexander.com/scala/scala-shell-script-example-exec-syntax
# which added class to http://www.scala-lang.org/documentation/getting-started.html

# Based on http://www.artima.com/scalazine/articles/steps.html
exec scala "$0" "$@"
!#

import java.util.Calendar
import java.text.SimpleDateFormat
import scala.math.BigInt // http://stackoverflow.com/questions/19437297/scala-bigint-array

// Print parameters into program, 
// if specified:
//    println("Hello, " + args(0) + "!")

// Using the Java Calendar class imported:
/*
val date = new GregorianCalendar(2009, JANUARY, 1).getTime
val locales = List(ENGLISH, FRENCH, ITALIAN, GERMAN, new Locale("nl"))
println(locales.map{getDateInstance(FULL, _).format(date)}.mkString("\n"))
*/

val formatString = "EEEE, MMMM d, yyyy hh:mm:ss a"
val cal = Calendar.getInstance
//  cal.add(Calendar.DAY_OF_YEAR, 8)

// println(new java.util.Date) // Like "Fri Mar 11 14:33:20 GMT-07:00 2016"
   println(new SimpleDateFormat(formatString) format cal.getTime)

////// Scala Number Handling:
val bytearray = BigInt(1337).toByteArray
val int = BigInt(bytearray)
println("Sample BigInt is %d", int)

var LONG : Long = 3L;
println("Sample LONG decimal is %d".format(LONG))
var DOUBLE : Double = 9.999;
printf("Sample DOUBLE float is %.2f".format(DOUBLE));

// PROTIP: Add a line break using a separate command:
printf("\n")

case class Person(name: String)

object Person {
  def main(args: Array[String]) {
    val al = Person("Al")
    println(al)
  }
}

Person.main(args)
// The expected output is always "Person(Al)".