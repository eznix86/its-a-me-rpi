#!/bin/bash
LED="/sys/class/leds/ACT"
echo none | sudo tee $LED/trigger > /dev/null
for i in {1..3}; do
  echo 0 | sudo tee $LED/brightness > /dev/null; sleep 0.1
  echo 1 | sudo tee $LED/brightness > /dev/null; sleep 0.1
done
sleep 0.5
echo 0 | sudo tee $LED/brightness > /dev/null
sleep 1
echo mmc0 | sudo tee "$LED_PATH/trigger" > /dev/null
