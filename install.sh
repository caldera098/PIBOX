#!bin/bash
echo "    #Attemping APT Update";
sudo apt-get update;
echo "    #Attemping APT Upgrade";
sudo apt-get upgrade;
echo "    #Adding Node to RPi Repository";
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -;
echo "    #Installing Raspotify";
curl -sL https://dtcooper.github.io/raspotify/install.sh | sh;
echo "    #Installing Shairport-sync, Node, Mosquitto and LibAvahi";
sudo apt-get install shairport-sync nodejs libavahi-compat-libdnssd-dev mosquitto;
echo "    #Installing HomeBridge, HomeBridge's PlugIns, Node-Red and Node-Red-Serial";
sudo npm install -g --unsafe-perm homebridge node-red node-red-node-serialport;
echo "    #Making HomeBridge and Node-Red booteable";
sudo cp ~/PiSmartBox/Boots/* /etc/init.d;
sudo chmod +x /etc/init.d/homebridge /etc/init.d/node-red;
sudo update-rc.d homebridge defaults;
sudo update-rc.d node-red defaults;
echo "    #Configuring HomeBridge";
sudo cp ~/PiSmartBox/config.json ~/.homebridge
echo "    #Configuring Raspotify's and Shairport-Sync's outputs";
sudo cp ~/PiSmartBox/raspotify /etc/default;
sudo cp ~/PiSmartBox/shairport-sync.conf /etc;
echo "   ---------ALL DONE----------    ";
sudo reboot;
