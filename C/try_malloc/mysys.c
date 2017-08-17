#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "mysys.h"

void init_sys(Sys *system, int sign) {
	if (system != NULL) {
		if ((system = malloc(sizeof(Sys))) != NULL) {
			printf("Malloc'ing of the system worked.\n");
			system->sign = sign;
		}
	}
}

void print_sys_sign(Sys *system) {
	if (system != NULL) {
		printf("The current system's sign is: %d\n", system->sign);
	}
}
