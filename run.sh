#!/bin/bash

cd /home/pi/PedalPi/
git reset --hard
git clean -f -d
git pull
make pedalStart
