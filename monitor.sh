#!/bin/bash

#Author: github.com/Lukatze
#Simple Script for monitoring the Speed of your Internet and archiving it into a csv friendly format

mkdir -p ~/internet-monitoring/$(date +"%Y")/$(date +"%m")/



echo $(echo $(speedtest-cli --simpl) | sed -e 's/\ /;/g') $(date +\;%H:%M) >>  ~/internet-monitoring/$(date +"%Y")/$(date +"%m")/$(date +"%d").csv #uses the output of speedtest and makes it csv conform adds timestamp and creates csv with the information

#the csv is named after the day for example: 03.csv
