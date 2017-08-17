#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "mysys.h"

int main() {
	Sys system;

	init_sys(&system, 1);
	print_sys_sign(&system);

	return 0;
}
