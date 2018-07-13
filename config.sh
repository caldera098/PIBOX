#!/bin/bash
sudo echo "general =" > /etc/shairport-sync.conf
sudo echo "name = "RasPi";" >> /etc/shairport-sync.conf
sudo echo "password = "0987";" >> /etc/shairport-sync.conf
sudo echo "};" >> /etc/shairport-sync.conf
sudo echo "alsa =" >> /etc/shairport-sync.conf
sudo echo "{" >> /etc/shairport-sync.conf
sudo echo "output_device = "duplex";" >> /etc/shairport-sync.conf
sudo echo "};" >> /etc/shairport-sync.conf
sudo echo "DEVICE_NAME="RasPi"" > /etc/default/raspotify
sudo echo "BITRATE="320"" >> /etc/default/raspotify
sudo echo "OPTIONS="--username la.caldera password estreyas --device duplex "" >> /etc/default/raspotify
