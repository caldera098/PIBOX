#!/bin/bash
cd /home/pi ;
echo "    #Attemping APT Update";
echo " ";
echo " ";
sudo apt-get --yes --force-yes update ;
echo " ";
echo " ";
echo "    #Attemping APT Upgrade";
echo " ";
echo " ";
sudo apt-get --yes --force-yes upgrade;
echo " ";
echo " ";
echo "    #Adding Node to RPi Repository";
echo " ";
echo " ";
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -;
echo " ";
echo " ";
echo "    #Installing Raspotify";
echo " ";
echo " ";
curl -sL https://dtcooper.github.io/raspotify/install.sh | sh;
echo " ";
echo " ";
echo "    #Installing Shairport-sync, Node, Mosquitto and LibAvahi";
echo " ";
echo " ";
sudo apt-get --yes --force-yes install shairport-sync nodejs libavahi-compat-libdnssd-dev mosquitto libasound2-plugin-equal;
echo " ";
echo " ";
echo "   #Installing Bluetooth A2DP and its configuration";
echo " ";
echo " ";
sudo apt-get --yes --force-yes install bluealsa ;
sudo cp /home/pi/PiSSBox/blue.sh /home/pi ;
echo " ";
echo " ";
echo "    #Installing HomeBridge, HomeBridge's PlugIns and Node-Red";
echo " ";
echo " ";
sudo npm install -g --unsafe-perm homebridge homebridge-pc-volume homebridge-mqtt node-red ;
echo " ";
echo " ";
echo "    #Making HomeBridge and Node-Red booteable";
echo " ";
echo " ";
sudo cp /home/pi/PiSSBox/Boots/* /etc/init.d ;
sudo chmod 775 /etc/init.d/homebridge /etc/init.d/node-red ;
sudo update-rc.d homebridge defaults ;
sudo update-rc.d node-red defaults ;
echo " ";
echo " ";
echo "    #Configuring HomeBridge";
echo " ";
echo " ";
sudo mkdir /home/pi/.homebridge ;
sudo chmod 777 /home/pi/.homebridge ;
echo " ";
sudo cp /home/pi/PiSSBox/config.json /home/pi/.homebridge ;
echo " ";
echo " ";
echo "    #Configuring Raspotify's and Shairport-Sync's outputs";
echo " ";
echo " ";
sudo cp /home/pi/PiSSBox/raspotify /etc/default ;
sudo cp /home/pi/PiSSBox/shairport-sync.conf /etc ;
echo " ";
echo " ";
echo "    #Configurating ALSA for multiple audio routing and AlsaEq";
sudo cp /home/pi/PiSSBox/asound.conf /etc ;
sudo cp /home/pi/PiSSBox/audio.sh /home/pí/audio.sh ;
echo " ";
echo " ";
echo "    #Configurating StartUp Sound";
sudo mkdir /etc/sound ;
sudo cp /home/pi/PiSSBox/215415__unfa__ping.wav /etc/sound/startup.wav ;
sudo echo "aplay -D duplex /etc/sound/startup.wav" >> /etc/rc.local ;
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo "----------------------------------ALL  DONE------------------------------------";
read -p "---------------------------PRESS ENTER TO FINALIZE-----------------------------";
sudo reboot;