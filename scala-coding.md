This page focuses on coding the Scala.


## Language documentation

* https://github.com/ornicar/scalex
provides a Hoogle-like documentation search engine for 

* http://www.scala-lang.org/api/current/#package
the Scala Standard Library API

* http://reactivex.io/rxscala/scaladoc/index.html#rx.lang.scala.Observable
RxScala API


## Language Features
The http://stackoverflow.com/tags/scala/info
Scala Overview on StackOverflow
provides a list of Scala features
(TODO: click on each for more information):

* Static typing
* Advanced type system with type inference and declaration-site variance
* Function types (including anonymous) which support lexical closures
* Pattern-matching
* Implicit parameters and conversions which support the typeclass and enrich-my-library patterns
* Mixin composition
* Full interoperability with Java
* Powerful concurrency constructs
* Advanced language constructs such as delimited continuations and an experimental macro system


## Akka Actors

Akka is a programming model 
that provides the basis for truly scalable and fault-tolerant applications.

Akka enables coding of <strong>Actors</strong> which provide the concurrency and parallelism
abstraction for Asynchronous, non-blocking and very lightweight highly performant event-driven 
event-driven processes
transparent distribution 

   * http://doc.akka.io/docs/akka/2.3.11/scala.html
     Akka Reference Documentation and API


## Print line


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
