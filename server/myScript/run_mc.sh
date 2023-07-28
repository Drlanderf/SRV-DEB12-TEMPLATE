#!/bin/bash
##########################################################################
# in order to ensure that each time the machine (re)starts 
# insert this line in the "crontab -e" of your user
# @reboot screen -dmS mc_server sh /myscript/run_mc.sh
###########################################################################
cd /home/minecraft/server/minecraft/ # <= correct the path
if [ ! -x ./Start.sh ]; then
    chmod +x Start.sh
fi
./Start.sh
