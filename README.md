# Quick Setup:

After cloning the repo you will have to do two things:
+ Install the bcm2835 lib
+ Enable the auto start up script

To install bcm2835 run the following commands:
```
wget http://www.airspayce.com/mikem/bcm2835/bcm2835-1.50.tar.gz;  // If there is a new release, this link should be changed.
tar xvfz bcm2835-1.50.tar.gz;
cd bcm2835-1.50;
./configure;
make;
sudo make install
```
Any code running with bcm2835 needs to run with sudo. Once the library is installed you can test it with test.c by running:
```
gcc -o test -l rt -l bcm2835
sudo ./test
```

To setup the startup script run the command:
```
sudo nano /etc/rc.local
```
and before the line `exit 0` enter the line below, once finished press CTR+X so save and exit nano text editor:
```
bash /home/pi/PedalPi/run.sh
```

Once setup, when ever your raspberry pi starts up it will :
+ If wifi is connected properly, the git repo will pull the latest from master
+ src/pedalPiStart will be run

For more info about Pedal Pi and how to start, go to https://www.electrosmash.com/pedal-pi-start

# Notes & FYI's:

Create and save new files with nano text editor (if you perfer):
sudo nano example.c

Compile files linking rt and bcm2835:
gcc -o example -l rt -l bcm2835
sudo ./example

Use header file:
#include <bcm2835.h>
