# 1. Put your minecraft server inside the "minecraft" folder

# 2. Correct the path inside "myScript/run_mc.sh"

# 3. Make some crontab to automate the restart of the server

# 3.1. For the user who have the minecraft-server (crontab -e) (copy/past friendly):

# Create a new detached screen and launch the mc-server at the start
@reboot screen -dmS mc_server sh /home/user/minecraft/myScript/run_mc.sh
# Create a new detached screen and launch htop inside at the start
@reboot screen -dmS htop htop
# Warn players that the server will restart in 5 min + server save-all
55 23 * * * sh /home/user/minecraft/myScript/restart_and_backup.sh >> /home/user/minecraft/myLog/reboot.log 2>&1
# Warn players that the server will restart in 5 min + server save-all
55 11 * * * sh /home/user/minecraft/myScript/restart_and_backup.sh >> /home/user/minecraft/myLog/reboot.log 2>&1

# 3.2. For the reboot (sudo nano /etc/crontab) (copy/past friendly):

# Restart at +/- midnight
59 23 * * * root shutdown -r >> /home/user/minecraft/myLog/reboot.log 2>&1
# Restart at +/- midday
59 11 * * * root shutdown -r >> /home/user/minecraft/myLog/reboot.log 2>&1

# 4. Enjoy