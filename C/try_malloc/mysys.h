#if !defined(MYSYS_H)
#define MYSYS_H

typedef struct sys {
	int sign;
} Sys;

void init_sys(Sys *system, int sign);
void print_sys_sign(Sys *system);

#endif
