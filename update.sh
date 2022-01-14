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
#!/bin/bash
x=30
while [ $x -gt 0 ]
do
sleep 1s
clear
echo "$x seconds until building a new node and wallet, press crtl-c to stop to save current wallet then use ./docker_start.sh to restart current wallet."
x=$(( $x - 1 ))
done
docker build .
./docker_start.sh
