Here is my hands-on approach to introducing Scala to you.

The sequence of information and examples here has been hand-crafted based on various tutorials.

## History
* 2003 <a href="#Odersky">"Martin Odersky</a> releases Version 1.0 of Scala. 
* 2011 TypeSafe's Reactive Platform provides commercial support.
* 2014 version 2.10.4
* 2016 Feb 22 Typesafe changes name to ![Lightbend](http://www.lightbend.com/)

## Why Scala?
The name Scala is derived from "scalable language".

The extent of Twitter's adoption of Scala are:

   * https://twitter.github.io/scala_school/
     started as lectures at Twitter.

   * http://twitter.github.io/effectivescala/
     Effective Scala lists "best practices" for Scala at Twitter. 
     Useful for understanding idioms in Twitter's code.

Scala is also said to power The Guardian (UK), Wallmart, Sony, Huffington Post, etc. 

Agencies/consultants working with Scala:

* https://softwaremill.com

## What is Reactive?

On September 16, 2014, Typesafe published their 
![Reactive Manifesto](http://www.reactivemanifesto.org/)
which asked readers to sign the manifesto as a commitment to build "Reactive"
system with a more "coherant" appoach to systems that 
have thiese characteristics:

   * Responsive - responds in a timely manner
   * Resilient - responsive in the face of failure
   * Elastic - stays responsive under varying workload
   * Message Driven - rely on asynchronous message-passing that ensures loose coupling, isolation, location transparency, and provides the means to delegate errors as messages.

@reactivemanifesto


Concise and expressive coding mean less liability and more legibility.

Symbols as methods.

## Installation
0. Instead of download from scala-lang.org/download/

   ```
brew install scala --with-docs
   ```

   This put scala in this folder by default:

   ```
/usr/local/Cellar/scala/2.9.2
   ```

0. Verify:

   ```
scala -version
   ```

   The response:

   ```
Scala code runner version 2.9.2 -- Copyright 2002-2011, LAMP/EPFL
   ```

Scala compiles to Java, enabling it to use JRE, JVM.

### Typesafe Activator
On a Mac:

   ```
brew install typesafe-activator
   ```

   Its default port is 8888.


### IDE Choices Install 

0. Click Install one  the Scala IDEs
0. Scala-ide.org is based on Eclipse (version 12.03).


## Interactive
0. Open a Terminal command line window.
0. Invoke the scala run-time console REPL (Read Evaluate Print Loop), Scala's interactive shell

   ```
scala
   ```

0. Press Tab key for a list of all keywords and variables.

   NOTE: Auto-completion of possbilities and auto-fill.

   NOTE: With Scala, a variable can be a function.

0. Print Hello World

   ```
println("Hello world");
   ```

   NOTE: Semicolons ("ugly cockroaches") are used only with multiple verbs on same line.

   NOTE: Everything returns something (all Scala code is <strong>expression based</strong>).

0. Quit back to bash console (like in vim):

   ```
:q
   ``` 

## Variables

0. Define a string variable:

   ```
var hello : String = "Hello world";
   ```

   NOTE: All Scala values in value variables that cannot be changed (immutable).

0. Define function:

   ```
def someFunc(a1:SomeType,...):SomeReturnType = {
}

def boolToInt(value : Boolean) =if(value) 1 else "0"
   ```

## SBT (Simple Build Tool)
SBT comes with Scala core, based on Maven:

Under src are main and test.

Under main are java, resources, and scala.

Under test are java, resources, and scala.

0. Create a folder with a .scala file.

   ```
mkdir HelloWorld && cd Helloworld
git init
copy con HelloWorld.scala
   ```

   A template creates:

   ```
class Main{
   def sayHi() = println("Hello")
}
   ```

0. Build it

   ```
sbt
   ```

   The command prompt

   ```
Java HotSpot(TM) 64-Bit Server VM warning: ignore option MaxPermSize=256m; 
port was removed in 8.0
   ```

   NOTE: The Scala compiler (scalac) was written by author of the Java compiler.

0. Use the console task:

   ```
console
   ```

  The response:

  Welcome to Scala version 2.10.3

### Define a build file
0. In bash command-line console within the custom program folder:

   ```
touch build.sbt
start build.sbt
   ```

0. Create a project folder.

0. Edit build.properties:

   ```
name := "Hello"
version := "0.1"
scalaVersion:= "2.10.4"
   ```

0. Edit plugins.sbt for use with Eclipse IDE:

   ```
addSbtPlugin("com.typsafe.sbteclipse" % "sbteclipse-plugin" % "2.4.0")
   ```

0. Invoke to create scaffolding:

   ```
sbt eclipse
   ```

0. In Eclipse, specify the workspace:

   PROTIP: Use folder ws or something short to differentiate among projects.

0. Create a <strong>Scala Worksheet</strong>. ???



## ScalaTest Styles
Test classes extends a test style class from
among http://www.scalatest.org/user_guide/selecting_a_style

   * For xUnit, there is FunSuite.
   * For BDD, FlatSpec.
   * For RSpec lovers, there is FlatSuite.
   * For Acceptace testers, FeatureSuite.

After selection, test packages should appear among Refer

## Performance Micro-Benchmarking

See https://scalameter.github.io/
by Aleksandar Prokopec of Switzerland 
(https://twitter.com/alexprokopec,
https://github.com/axel22) 
and clone https://github.com/scalameter/scalameter.git 
and https://github.com/scalameter/scalameter-examples

Among ![Alex's videos](https://www.youtube.com/channel/UCoyqnhi_BdpLrBVMvkNIMMw) 
is [this one showing JVM GC profile](https://www.youtube.com/watch?v=UHCeXdxkx70)

## Scala is a New Paradigm from Java


   ```
m map { t ==> val (s, i) = t; (s, i+1) } 
   ```

   with "Sytactic sugar" removed to Java map function:

   ```
m.map({ t ==> val (s, i) = t; (s, i+1) })
   ```

A Tuple is a fixed list which can be typed differently and
can be a container f
or other data types.
Since Sashmi and Onigiri are instances of the same type Sushi:

   ```
val bento:(Sushi, Sushi) = (new Sashimi, new Onigiri)
   ```

Arity of 22 

Scala thus is able to identify issues at compile time.

### Traits like an abstract class - 
A trait can be added to any Scala class.

Like interfaces with implementations or controlled multiple inheritance.

According to
https://en.wikipedia.org/wiki/Trait_%28computer_programming%29
"traits are a set of methods that can be used to extend the functionality of a class."

https://twitter.github.io/scala_school/basics.html
says "Traits are collections of fields and behaviors that you can extend or mixin to your classes." and offers this code example which extends traits using keywords:

   ```
class BMW extends Car with Shiny {
  val brand = "BMW"
  val shineRefraction = 12
}
   ```

   The above is dependent upon these definitions:

   ```
trait Car {
  val brand: String
}

trait Shiny {
  val shineRefraction: Int
}

class BMW extends Car {
  val brand = "BMW"
}
   ```

A class can extend only one class, but
a class can extend several traits. 


## Case Classes
A case in front of a class definition makes it a factory method
which creates getter classes:

   ```
case SomeClass(arg1:String)
   ```

With Scala, a companion object is where static objects are defined.

## Pattern Matching

## Tests

   ```
package X

class X extends FlatSpec{

}
   ```

import org.salatest.FlatSpec

## Run Tests
The tilde prefix detects if code changed and runs:

   ```
~test
   ```

## Front-end
https://github.com/ochrons/scalajs-spa-tutorial

Scala.js, the Scala to JavaScript compiler.
by Sébastien Doeraene in Switzerland (![@sjrdoeraene](https://twitter.com/sjrdoeraene))

   * https://www.youtube.com/watch?v=n1GgVWOThhY
     Scala.js: Next generation front end development in Scala

## Mobile
Due to its Java roots, Scala can be used to create Android apps
using this IDE:
https://www.assembla.com/wiki/show/scala-ide/Developing_for_Android

## Google App Engine
Scala works smoothly on Google App Engine 

Scala Guava
https://github.com/scalaz/scalaz

## Big Data
Spark is written in Scala.

* https://www.youtube.com/watch?v=AHB6aJyhDSQ
   How Scala Conquered the Big Data World



## Learning Resources for Introduction
In addition to resources noted above,

http://amzn.to/1JfA1bV

http://www.atomicscala.com/free-sample
   ![$25 self-published ebook released March 2015 on Gumroad](https://gumroad.com/l/AtomicScala/)
   by Bruce Teckel
   is about Scala 2.11

http://joelabrahamsson.com/learning-scala/
   gives an intro blog to Scala

Pluralsight published several video courses:

* https://app.pluralsight.com/player?course=scala-getting-started
   by Justin Pihony (JustinPihony.blogspot.com)
   shows the building of the fileSearcher package.

https://va1.scalacourses.com/
   offers several self-paced video courses:

   * $495 Introduction to Scala
   * $495 Intermediate
   * $275 Intro to Play Framework
   * $249 Java 7/Scala 2.10 Object-Oriented Interop

http://www.amazon.com/Learning-Scala-Practical-Functional-Programming/dp/1449367933
   Learning  Scala: Practical Functional Programming for the JVM 
   (1st Edition April 2014)
   by Jason Swartz
   
   Published by O'Reilly, the book's page is at:
   http://shop.oreilly.com/product/0636920030287.do

http://it-ebooks.org/tag/scala


## Scala Rock Stars
Here are the most well-known people who are putting stuff out about Scala:

Dick Wall, CTO of Escalatesoft.com and international champion of Scala:

   * Video tutorials at https://www.parleys.com/channel/dick-walls-channel
     is the most thorough series I've seen so far.

   * Authored book "Programming in Scala"

<a name="Odersky"></a>
Martin Odersky
   (@odersky from Switzerland) 

   * https://www.youtube.com/watch?v=kkTFx3-duc8
     Scala with Style

   * https://www.youtube.com/watch?v=ecekSCX3B4Q
     Scala - the Simple Parts

Josh Suereth (@jsuereth)

  * ![Scalawags YouTube channel](https://www.youtube.com/channel/UCHxNwi3l5CGZo1kG47k7i2Q)
    hangouts 

  * Google+
    https://plus.google.com/u/0/112145465018184674652/posts
    
  * Scala In Depth Developer book

  * ![SBT in action book](https://www.manning.com/books/sbt-in-action)

Craig Tataryn (of Canada)

   * basementcoders.com podcast

   * https://github.com/ctataryn/LearningScala
     contains the PDF of slidedeck

Jonas Bonér (@jboner)
   is Founder & CTO of Lightbend

Duncan K. DeVore (@ironfish, VP of Engineering at a power company)

   * ![VIDEO: The Autobiography of Building a Reactive Application at ScalaDays 2014 Berlin](https://www.parleys.com/tutorial/building-reactive-application)

## YouTube videos

https://www.youtube.com/watch?v=Ytfw8Bg86p4
   Scala Language Basics
   by Mark Lewis

https://www.youtube.com/watch?v=DzFt0YkZo8M
   Scala Tutorial 
   by Derek Banas of http://newthinktank.com
   doesn't waste your time, so covers the topic thoroughly in a short time.
   http://goo.gl/O1CuGM

https://www.youtube.com/watch?v=_qRYOayG9SM
   Busy Java Developer's Guide to Scala: Thinking
   by NewCircle Training

https://www.youtube.com/watch?v=PKc5IwHG68k
  Scala versus Java
  by NewCircle Training


https://www.youtube.com/watch?v=2Ji5i0x2gJI
   Intro to Functional Programming in Scala
   by Joe Barnes

## Notifications
* Follow Lightbend on SoundCloud.com for podcasts such as  
   https://soundcloud.com/lightbend/scala-days-2014-git-going-faster-with-scala-roberto-tyley

* Videos at http%3A%2F%2Fwww.parleys.com
