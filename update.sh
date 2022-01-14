#!/bin/bash
x=30
while [ $x -gt 0 ]
do
sleep 1s
clear
echo "$x seconds until building a new node and wallet, press crtl-c to stop and save current wallet"
x=$(( $x - 1 ))
done
./docker_stop.sh
chmod -x docker_install.sh
chmod -x docker_start.sh
chmod -x docker_stop.sh
chmod -x docker_bash.sh
chmod -x install.sh
chmod -x update.sh
git pull
chmod +x docker_install.sh
chmod +x docker_start.sh
chmod +x docker_stop.sh
chmod +x docker_bash.sh
chmod +x install.sh
chmod +x update.sh
./docker_start.sh
