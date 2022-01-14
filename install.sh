echo "Updating Code"
git pull
echo "Setting Permissions"
chmod +x docker_install.sh
chmod +x docker_start.sh
chmod +x docker_stop.sh
chmod +x docker_bash.sh
chmod +x update.sh
echo "Installing startup and shutdown scripts"
sudo cp docs/bmorecoind.service /etc/systemd/system/bmorecoind.service
sudo cp docs/shutdown_node.service /etc/systemd/system shutdown_node.service
sudo systemctl daemon-reload
sudo systemctl enable start_bmorecoind.service
sudo systemctl enable stop_bmorecoind.service
echo "Installing Docker"
./docker_install.sh
