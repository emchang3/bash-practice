#!/bin/bash

# ---------------
# Exercise 1
# ---------------

# Write a shell script that consists of a function that display the number of files in the present working directory. Name this function "file_count" and call it in your script. If you use a variable in your function, remember to make it a local variable.

# Hint: The wc​utility is used to count the number of lines, words, and bytes.

file_count() {
  ls | wc -l
}

file_count

# ---------------
# Exercise 2
# ---------------

# Modify the script from the previous exercise. Make the "file_count" function accept a directory as an argument. Next have the function display the name of the directory followed by a colon. Finally, display the number of files to the screen on the next line. Call the function three times. First, on the "/etc" directory, next on the "/var" directory and finally on the "/usr/bin" directory.

# Example output:
# /etc:
# 85

file_count2() {
  for DIRECTORY in $@
  do
    echo "${DIRECTORY}:"
    ls ${DIRECTORY} | wc -l
  done
}

file_count2 "/etc" "/var" "/usr/bin"
