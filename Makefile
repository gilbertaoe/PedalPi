pedalStart:
	gcc src/pedalPi.c -o pedalPi -l rt -l bcm2835
	sudo ./pedalPi
