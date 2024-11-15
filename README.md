# minecraft_tools

General instructions
* Don't use the root user, `su - user` instead
* Use screen -dR
* Start the server with the script ~/minecraft_tools/start_server.sh

Backup instructions
1. `/stop` from the game console to stop
2. run: ~/minecraft_tools/backup_server.sh
3. restart the server with the script: ~/minecraft_tools/start_server.sh
4. Backup this folder with `git add . && git commit -m "." && git push`
5. TODO automate

If required to restart the VM
1. Follow the backup instructions above
2. Restart with sudo reboot
3. login with with `su - user` and `screen -dR`
4. First screen is the server, Second screen is `cd minecraft_tools`

