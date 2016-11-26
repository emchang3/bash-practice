#!/bin/bash

# NOTE: (( iterator++ )) requires Bash shell, specifically, for execution.

# Exercise 1

# Write a shell script that loops through the /etc/passwd file one line at a time. Prepend each line with a line number followed by a colon and then a space.

# Example output:

# 1: root:x:0:0:root:/root:/bin/bash
# 2: daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
# 3: bin:x:2:2:bin:/bin:/usr/sbin/nologin
# 4: sys:x:3:3:sys:/dev:/usr/sbin/nologin

# LINE_NUM=1
# while read LINE
# do
#   echo "${LINE_NUM}: ${LINE}"
#   (( LINE_NUM++ ))
# done < /etc/passwd

# Exercise 2

# Write a shell script that asks the user for the number of lines they would like to display from the /etc/passwd file and display those lines.

# Example output:

# How many lines of /etc/passwd would you like to see? 3
# root:x:0:0:root:/root:/bin/bash
# daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
# bin:x:2:2:bin:/bin:/usr/sbin/nologin

# read -p "How many lines would you like to see? " LINES
# LINE_NUM=0
# while read LINE && [ $LINE_NUM -lt $LINES ]
# do
#   echo "${LINE_NUM}: ${LINE}"
#   (( LINE_NUM++ ))
# done < /etc/passwd

# Exercise 3

# Write a shell script that that allows a user to select an action from the menu. The actions are to show the disk usage, show the uptime on the system, and show the users that are logged into the system. Tell the user to enter q​to quit. Display "Goodbye!" just before the script exits. If the user enters anything other than 1​, 2​, 3​, or q​, tell them that it is an "Invalid option." You can show the disk usage by using the df​ command. To show the uptime, use the uptime command. To show the users logged into the system, use the who ​command. Print a blank line after the output of each command.

# Example output:

# 1. Show disk usage.
# 2. Show system uptime.
# 3. Show the users logged into the system.
# What would you like to do? (Enter q to quit.) 2
# 14:59:08 up 3 days, 7:36, 7 users, load average: 0.13, 0.22, 0.33

# 1. Show disk usage.
# 2. Show system uptime.
# 3. Show the users logged into the system.
# What would you like to do? (Enter q to quit.) 4
# Invalid option.

# 1. Show disk usage.
# 2. Show system uptime.
# 3. Show the users logged into the system.
# What would you like to do? (Enter q to quit.) q
# Goodbye!

while read -p "1. Show disk usage. 2. Show system uptime. 3.Show users logged into the system. What would you like to do? (Enter 'q' to quit.) " WAT
do
  case "${WAT}" in
    1)
      df
      ;;
    2)
      uptime
      ;;
    3)
      who
      ;;
    q)
      echo "Goodbye!"
      break
      ;;
    *)
      echo "Invalid option."
      ;;
  esac
done
