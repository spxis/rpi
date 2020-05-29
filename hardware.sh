
#!/bin/bash
# SPXIS provisioning script for the Raspberry Pi Zero/ZeroW

echo "*** Starting"
mkdir ~/Adafruit && mkdir ~/Pimoroni

curl -sS https://get.pimoroni.com/unicornhat | bash
curl https://get.pimoroni.com/unicornhat | bash # Install Unicorn Hat
curl https://get.pimoroni.com/scrollphathd | bash # Install Scroll Hat Mini
curl https://get.pimoroni.com/touchphat | bash # Install Touch Phat SHIM
curl https://get.pimoroni.com/buttonshim | bash # Install Button SHIM
curl https://get.pimoroni.com/ledshim | bash # Install LED SHIM

cd ~/Pimoroni && git clone https://github.com/pimoroni/unicorn-hat.git
cd ~/Pimoroni && git clone https://github.com/pimoroni/unicornhatmini-python
cd unicornhatmini-python && sudo ./install.sh
cd ~/Pimoroni && git clone https://github.com/pimoroni/scroll-phat-hd.git
cd ~/Pimoroni && git clone https://github.com/pimoroni/touch-phat.git
cd ~/Pimoroni && git clone https://github.com/pimoroni/button-shim.git
cd ~/Pimoroni && git clone https://github.com/pimoroni/led-shim.git
cd ~/Pimoroni && git clone https://github.com/pimoroni/inky.git 

# ----------------------------------------------------------------
# Install Adafruit 128x64 OLED Bonnet
# ---------------------------------------------------------------

cd ~/Adafruit && git clone https://github.com/adafruit/Adafruit_CircuitPython_SSD1306.git
cd ~/Adafruit && git clone https://github.com/adafruit/Adafruit_CircuitPython_framebuf.git
cp ~/Adafruit/Adafruit_CircuitPython_framebuf/examples/font5x8.bin ~/Adafruit/Adafruit_CircuitPython_SSD1306/examples/

echo "*** Done"
