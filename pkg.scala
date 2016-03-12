// As pkg.scala
// in http://github.com/wilsonmar/scala
// Compile this using command: scalac com.xyz.app1.pkg
// Run     this using command: scala  com.xyz.app1.Hello

package com.xyz.app1 {

    object Hello {
        def main(args:Array[String]) {

            // Print name of program executed:
            println(s"Running: ${System.getProperty("sun.java.command")}")

            println("Hello")
        }
    }
}