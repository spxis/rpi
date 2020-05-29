
#!/bin/bash
# SPXIS provisioning script for the Raspberry Pi Zero/ZeroW

echo "*** Starting"
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get autoremove

echo "*** Now core software"
sudo apt-get install -y build-essential git  gcc g++ make python wget htop iotop nmon lsof screen speedtest-cli

echo "*** Adding Python abilities"
sudo apt-get install -y python-pip python3-pip python-pil python3-pil python-flask python3-flask python-numpy python3-numpy python-spidev
sudo apt-get install -y python-rpi.gpio python-gpiozero python3-rpi.gpio python3-gpiozero raspi-gpio libjpeg-dev zlib1g-dev
sudo apt-get install -y python-smbus python3-smbus python-psutil python3-psutil python-tweepy python3-tweepy

echo "*** Adding fonts"
sudo apt-get install -y ttf-mscorefonts-installer fontconfig python-cap1xxx python3-cap1xxx

echo "*** Adding phat/hat/bonnet software"
sudo apt-get install -y python-scrollphathd python3-scrollphathd python-buttonshim python3-buttonshim python-ledshim python3-ledshim python-touchphat python3-touchphat libopenjp2-7

# ----------------------------------------------------------------
# Install latest NODE (11) and PM2
# From https://desertbot.io/blog/nodejs-git-and-pm2-headless-raspberry-pi-install
# ----------------------------------------------------------------
echo "*** Install Node 11"
wget https://nodejs.org/dist/v11.15.0/node-v11.15.0-linux-armv6l.tar.gz
tar -xzf node-v11.15.0-linux-armv6l.tar.gz
sudo cp -R node-v11.15.0-linux-armv6l/* /usr/local/
rm -rf node-v11.15.0-linux-armv6l*

echo "*** Other software"
sudo apt install exfat-fuse # EXFAT drivers @ https://desertbot.io/blog/headless-raspberry-pi-4-external-ssd

echo "*** Done"
