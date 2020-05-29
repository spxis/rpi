

echo "Starting cheerlights"
sudo python /home/pi/Pimoroni/led-shim/examples/cheerlights.py &
echo "Led-shim started"
sudo python /home/pi/Pimoroni/blinkt/examples/cheerlights.py &
echo "Blinkt started"
echo "Running cheerlights"

sudo python3 /home/pi/Adafruit/Adafruit_CircuitPython_SSD1306/examples/ssd1306_stats.py &

