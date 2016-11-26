#!/bin/bash

PS4='+ Line $LINENO: '

set -e
set -x

# Exercise 1

# Write a shell script that exit on error and displays commands as they will execute, including all expansions and substitutions. Use 3 ls ​commands in your script. Make the first one succeed, the second one fail, and the third one succeed. If you are using the proper options, the third ls command will not be executed.

# ls /home/ezra/Projects/API-Testing/
# ls /home/ezra/NOPE/
# ls /home/ezra/Projects/Bash-Practice/

# Exercise 2

# Modify the previous exercise so that script continues, even if an error occurs. This time all three ls ​commands will succeed.

set +e

ls /home/ezra/Projects/API-Testing/
ls /home/ezra/NOPE/
ls /home/ezra/Projects/Bash-Practice/
