#!bin/bash

sudo apt-get update
sudo apt-get upgrade
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
curl -sL https://dtcooper.github.io/raspotify/install.sh | sh
sudo apt-get install shairport-sync nodejs libavahi-compat-libdnssd-dev mosquitto
sudo npm install -g --unsafe-perm homebridge node-red node-red-node-serialport
sudo cp Boots/* /etc/init.d
sudo chmod +x /etc/init.d/homebridge /etc/init.d/node-red
sudo update-rc.d homebridge defaults
sudo update-rc.d node-red defaults
sudo cp raspotify /etc/default
sudo cp shairport-sync.conf /etc
sudo reboot

