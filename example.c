#include <bcm2835.h>
#include <stdio.h>

int main(int argc, char **argv)
{
	if(!bcm2835_init())
	{
		printf("Failed to init!\n");

		return -1;
	}

	printf("Success!\n");

	return 0;
}
