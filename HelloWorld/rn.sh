#!/usr/bin/env bash

# At rn.sh within https://github.com/wilsonmar/scala
# 
# Before calling this, run: chmod a+x rn.sh
# Call from   command line: ./rn HelloWorld

# shell script
# Sample call from bash command line: rn HelloWorld

MY_PGM=${1:-"HellowWorld"}
printf "Run Scala program: %s.\n" "$MY_PGM"

# Position:
# cd $MY_PGM

# Compile:
scalac $MY_PGM.scala

# Run:
#scala -i -classpath .  $MY_PGM

# Test?