#!/bin/bash

# Exercise 1

# Write a shell script that displays one random number to the screen and also generates a syslog message with that random number. Use the "user" facility and the "info" facility for your messages.
# Hint: Use $RANDOM

# Exercise 2

# Modify the previous script so that it uses a logging function. Additionally tag each syslog message with "randomly" and include the process ID. Generate 3 random numbers.

log_this() {
  echo $1
  logger -i -p user.info -t "randomly" "$1"
}
log_this $(echo $RANDOM)
