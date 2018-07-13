#!/bin/bash
bt-adapter -s Powered On ;
bt-adapter -s Discoverable On ;
bt-adapter -s Pairable On ;
while :
 do
    bluealsa-aplay -d duplex 00:00:00:00:00:00
    sleep 15
done | bt-agent -c NoInputNoOutput &
