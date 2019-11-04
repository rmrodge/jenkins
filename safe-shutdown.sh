#!/bin/bash

jenkins-cli -s http://server:8080 safe-shutdown &
printf "%sScheduling a safe-shutdown of Jenkins..."

# Get the PID for the Jenkins process:
PID=$(cat /var/run/jenkins/jenkins.pid)

while ps -p $PID > /dev/null; do sleep 1; done;
printf "%s\njenkins has been safely shutdown...\n"
