# Pi Sound&Smart Box

## *Project is still under construction* 

### Pi Smart&Sound Box is a mix of utilities for making your pi an Ultimate Wireless Music Player and a Home-Controller.

   1. For Apple, just connect via AirPlay to RasPi. 
   2. For Spotify (only premium), go to Spotify Connect tab and select RasPi. 
   3. USB Audio Line-In pre-configured for constantly streaming to speakers.
   4. For Apple devices, Homebridge (a HomeKit app bridge) is already installed and using MQTT Plug-In and Node-Red for communication            with Arduino or ESP. Also a PC-Volume Plug-In for controlling your Pi volumen thru your iPhone.
   5. Beta version for Netflix thru KODI (ex-XBMC). Next version will be better.
   6. All of them running as bootable services, so no worries about annoying windows.
   
	
#### New update!!

   Finally get working Bluetooth A2DP. It's a beta version and so you gotta do some little stuff before playing. In a terminal:
   1. Open BluetoothCTL and follow the steps ahead:
   
            a. $ sudo bluetoothctl
            b. $ power on
            c. $ agent on
            d. $ default-agent
            e. $ discoverable on
            f. $ pairable on 
  
   2. Pick your phone and on Bluetooth settings you should see "raspberrypi" device. Attemp to connect. Now check your Pi's terminal and        you'll see some stuff for choosing yes/no. Write yes on all of them, it should not be more than three times. A
   
   3. Next: exit BluetoothCTL
   
            g. $ exit
    
   4. Final step, run BlueAlsa script:
   
            h. $ cd ~
            i. $ ./blue.sh
            
      Now you're good to go. Just play anything from your device and... voila!!!
      Remember it's a beta version, so on the next updates I'll make it automatic.
      PS: connect only one device at the same time. Multiple connections will crash app.
      PS2: this will keep the configuration all the time while the Pi is on. If you reboot it, then you gotta do all this again.
            
      

### Installation

     1. Clone this on your Home Foler:
                $ git clone https://github.com/caldera098/PiSSBox.git ~/
                
     2. Open PiSSBox folder:
                $ cd ~/PiSSBox
                
     3. Make PiSSB.sh executable:
                $ sudo chmod 755 install.sh
                
     4. Run the installation:
                $ ./install.sh
                
     5. Pay attention you'll have to enter yes or no on some steps.
     
     6. After installation says "ALL DONE" press any key and wait till reboot is complete.
     
   

### Project objetives and next updates:

                .A fully and personalized installation for all cases.
                .New improves like Netflix or YouTube incorporing DIAL technology.
                .AirPlay Screen Mirroring and Android Screen Mirror-
                -Bluetooth audio compatibility.
                .Android Homebridge support.
                .Let's future show us what we need.
                


#### An enorumous thank for all this brilliant people who created this amazing programs: ####

         -nfarina's Homebirdge               https://github.com/nfarina/homebridge 
         -dtcooper's Raspotify               https://github.com/dtcooper/raspotify  
         -mikebrady's Shairport-Sync         https://github.com/mikebrady/shairport-sync 
         -cflurin's Homebridge-mqtt          https://github.com/cflurin/homebridge-mqtt 
         -JosephDuffy's Homebridge-PC-Volume https://github.com/JosephDuffy/homebridge-pc-volume 
         
         
#### Anyone who want to contribute to the project is welcomed to do it!!!! 
#### You can use this for recreational or home use. It's totaly prohibited to sell or make any economical usufruct of this program.

##### Valentin Fernandez
