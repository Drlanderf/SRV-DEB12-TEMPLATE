#!/bin/bash
############################################################################
# insert this line in the "crontab -e" of your user with correct "timecode"
# for everyday everymonth everyweek at 11:55pm : 55 23 * * *
# for everyday everymonth everyweek at 11:55am : 55 11 * * *
############################################################################
screen -S mc_server -p 0 -X stuff "say Server reboot in 5 minutes...^M"
screen -S mc_server -p 0 -X stuff "say Save in progress...^M"
screen -S mc_server -p 0 -X stuff "save-all^M"
sleep 5m
screen -S mc_server -p 0 -X stuff "^C"