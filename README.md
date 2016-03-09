Here is my hands-on approach to introducing Scala to you.

The sequence of information and examples here has been hand-crafted based on 
various other tutorials.

(This one page will be separated into separate ones)

## History
* 2003 <a href="#Odersky">Martin Odersky</a> releases Version 1.0 of Scala after a year of work. 
* 2011 TypeSafe formed to provide commercial support for a <a name="WhatIsReactive">Reactive Platform</a>.
* 2014 version 2.10.4
* 2016 Feb 22 Typesafe changes name to ![Lightbend](http://www.lightbend.com/)

<a name="WhatIsReactive">
## What is Reactive?</a>

On 2013, several people associated with Typesafe published a website named
![http://www.reactivemanifesto.org/](http://www.reactivemanifesto.org/)
which asked readers to sign the manifesto as a commitment to build "Reactive"
system with a more "coherant" appoach to systems that 
have these characteristics:

   * Responsive - responds in a timely manner
   * Resilient - responsive in the face of failure
   * Elastic - stays responsive under varying workload
   * Message Driven - rely on asynchronous message-passing that ensures loose coupling, isolation, location transparency, and provides the means to delegate errors as messages.

Terms used in the Manifesto are further defined in a
![Glossary](http://www.reactivemanifesto.org/glossary),
and reflect the blog article by @jboner named
![Reactive Manifesto 2.0](https://www.lightbend.com/blog/reactive-manifesto-20).
dated September 16, 2014.

Tweets about this topic are at 
![@reactivemanifesto](http://twitter.com/reactivemanifesto).

Curiously, the Manifesto doesn't mention the word "Scala" at all.


<a name="WhyScala">
## Why Scala</a>
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

The description of the Scala language is presented during hands-on activities below.

   NOTE: Concise and expressive coding mean less liability and more legibility.


## Installation
0. PROTIP: Use Homebrew instead of download from scala-lang.org/download/

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

   NOTE: The "EPFL" is for École Polytechnique Fédérale de Lausanne
   in Switzerland 
   where
   <a href="#Odersky">Martin Odersky</a> works.



### IDE Choices Install 

0. Click Install one  the Scala IDEs
0. Scala-ide.org is based on Eclipse (version 12.03).


## Interactive Command Line
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

   NOTE: Everything returns something (all Scala code is "expression based").

0. Quit back to bash console (like in vim):

   ```
:q
   ``` 

More about Scala coding is at
<a href="scala-coding.md">scala-coding.md</a>.


## SBT (Simple Build Tool)
SBT comes with Scala core, based on Maven:

Under src are main and test.

   * Under main are java, resources, and scala.

   * Under test are java, resources, and scala.

   NOTE: Scala compiles to Java, enabling it to use JRE, JVM and tooling around them.


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

   NOTE: The Scala compiler (scalac) was written by an author of the Java compiler.

0. Use the console task:

   ```
console
   ```

  The response:

  Welcome to Scala version 2.10.3

  (or whatever version)


### Lightbend/Typesafe Activator
Activator server app aims to be a friendly one-stop-shop to bootstrap Scala, Akka, and Play development. 
It can be used as a wrapper script that launches into traditional command line sbt, 
but it also includes a template and tutorial system, and an optional GUI for getting started.

0. On a Mac, instead of downloading http://www.lightbend.com/activator/download

   ```
brew install typesafe-activator
   ```

   Its default port is 8888.

   See: https://github.com/typesafehub/activator
   for a video.

   The Activator UI enables you to switch quickly among 
   code, compile, test, run, and app windows.

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

* https://github.com/sbt/sbt-ghpages
generates a XSBT project website and pushes to ghpages on GitHub.com.


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


## Libraries

* http://www.lightbend.com/community/core-projects/play-framework

* https://www.playframework.com/
* http://akka.io/ for asynch and background processing
* Slick

* http://spray.io/ for REST/HTTP servlet container Akka actors.

* http://scalatra.org/ web micro-framework for creating REST APIs.

* Logback logging library (16% vs. 5% for Log4j)

* http://liftweb.net/ Lift framework is popular

Among the top 100 libraries on GitHub:
http://blog.takipi.com/the-top-100-scala-libraries-in-2015-based-on-64562-github-libraries/

* Spark blows Hadoop out of the water
* https://github.com/twitter/scalding for cascading Hadopp MapReduce jobs.
* https://github.com/adamw/veripacks to verify package specifications
* https://github.com/adamw/elasticmq for message-based queuing
* https://github.com/adamw/macwire for dependency injection.

The ranking named ![H2](http://www.h2database.com/html/main.html)
as the most popular database at #21.
As a "very fast open source small footprint JBDC API database",
H2 outranked MySQL (#33), and PostgreSQL (#50). 
MongoDB didn’t make the list for Scala.


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

   * Martin conducted on Coursera COURSE:
   ![Functional Programming Principles in Scala](https://www.coursera.org/course/progfun)
   which is not available now.

   * However, still available from May 2015 is Martin's COURSE:
   ![Principles of Reactive Programming](https://www.coursera.org/course/reactive)


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
   is Founder & CTO of Lightbend (Typesafe)
   and inventor of Akka.

   * http://jonasboner.com/

Duncan K. DeVore (@ironfish, VP of Engineering at a power company)

   * ![VIDEO: The Autobiography of Building a Reactive Application at ScalaDays 2014 Berlin](https://www.parleys.com/tutorial/building-reactive-application)

Shadaj Laddad

   * shadaj.me
   * https://www.parleys.com/tutorial/scala-power-versatility

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

   * http://reactconf.com/ occured November 20, 2014 in San Francisco.
     See http://lanyrd.com/2014/reactsf/nov-20/

   * #ScalaDays (2012, 2013, 2014, 2015)

   * Meetup - Bay Area Scala Enthusiast group 