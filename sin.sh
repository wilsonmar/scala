#!/bin/sh
# sin.sh
env JAVACMD=java JAVA_OPTS="-Xmx512M -Xms16M -Xss16M" scala "$0" "$@"
!#
val r = Runtime.getRuntime
println("Memory usage: "+ (r.totalMemory - r.freeMemory) + " of " + r.maxMemory)
