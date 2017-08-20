CC = gcc
CFLAGS = -ansi -Wall -g -O0 -Wwrite-strings -Wshadow -pedantic-errors
PROGS = tester

all: $(PROGS)

tester: tester.o linkedlist.o
	$(CC) -o tester tester.o linkedlist.o

tester.o: tester.c linkedlist.h
	$(CC) $(CFLAGS) -c tester.c

linkedlist.o: linkedlist.c linkedlist.h node.h
	$(CC) $(CFLAGS) -c linkedlist.c

clean:
	rm -f *.o *.exe $(PROGS)
