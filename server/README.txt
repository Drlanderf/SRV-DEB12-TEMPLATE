1. Put your minecraft server inside the "minecraft" folder

2. Correct the path inside "myScript/run_mc.sh"

3. Make some crontab to automate the restart of the server

3.1. For the user who have the minecraft-server (crontab -e) (copy/past friendly):

# Create a new detached screen and launch the mc-server at the start
@reboot screen -dmS mc_server sh <path_to>/server/myScript/run_mc.sh

# Create a new detached screen and launch htop inside at the start
@reboot screen -dmS htop htop

# Warn players that the server will restart in 5 min + server save-all
55 23 * * * sh <path_to>/server/myScript/restart_and_backup.sh

# Warn players that the server will restart in 5 min + server save-all
55 11 * * * sh <path_to>/server/myScript/restart_and_backup.sh


3.2. For the root (nano /etc/crontab) (copy/past friendly):

# Restart at midnight
0 0 * * * reboot

# Restart at midday
0 12 * * * reboot

4. Enjoy