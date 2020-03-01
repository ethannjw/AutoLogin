#!/bin/bash
# Script to install python, selenium and chromedriver for raspbian
# To run, type in './installation_raspbian.sh' (remove quotes) in commandline.
# If it says you do not have permission to run, key in 'chmod 755 installation_raspbian.sh' (remove quotes) and try again

# Start of script
sudo apt-get update
sudo apt-get upgrade
sudo apt-get python3
sudo apt-get pip3
sudo pip3 install selenium
# From here on you need to check your chrome version. You can do this by:
chromium-browser --version

# The latest version as of this writing is 78.0.3904. So we wil download the corresponding version chromedriver armhf version
sudo wget -P /home/pi/Documents http://launchpadlibrarian.net/452362975/chromium-chromedriver_78.0.3904.108-0ubuntu0.16.04.1_armhf.deb

# Install the deb file
sudo dpkg -i /home/pi/Documents/chromium-chromedriver_78.0.3904.108-0ubuntu0.16.04.1_armhf.deb

# The default dir the file installs to is /usr/lib/chromium-browser, so we will add that to PATH
sudo export PATH=$PATH:/usr/lib/chromium-browser
echo $PATH

# Optional 
# To add to PATH manually:
# sudo nano ~/.bashrc
# Then add the path to the bottom where t says:
# export PATH=$PATH:/opt
# Press ctrl-o then ctrl-x to quit nano
