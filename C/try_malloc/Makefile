CC = gcc
CFLAGS = -ansi -Wall -g -O0 -Wwrite-strings -Wshadow -pedantic-errors
PROGS = tester

all: $(PROGS)

tester: tester.o mysys.o
	$(CC) -o tester tester.o mysys.o

tester.o: tester.c mysys.h
	$(CC) $(CFLAGS) -c tester.c

mysys.o: mysys.c mysys.h
	$(CC) $(CFLAGS) -c mysys.c

clean:
	rm -f *.o *.exe $(PROGS)
