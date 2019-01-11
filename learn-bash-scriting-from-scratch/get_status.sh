#!/bin/bash

# Prints a list of last logged in users, system uptime, current data/time

printf "last logged in users:\n" > status.txt
last -a >> status.txt
printf "\n" >> status.txt

printf "System uptime:\n " >> status.txt
uptime >> status.txt

printf "\nDate:\n " >> status.txt
date >> status.txt

