git pull
chmod +x docker_install.sh
chmod +x docker_start.sh
chmod +x docker_stop.sh
chmod +x docker_bash.sh
chmod +x update.sh
sudo cp docs/bmorecoind.service /etc/systemd/system/bmorecoind.service
sudo cp docs/shutdown_node.service /etc/systemd/system shutdown_node.service
sudo systemctl daemon-reload
sudo systemctl enable start_bmorecoind.service
sudo systemctl enable stop_bmorecoind.service
./docker_install.sh
