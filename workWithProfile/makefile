CC=gcc
CCFLAGS=-Wall
CLEAN=rm -f
AR=ar rv

libWorkWithProfile.a: workWithProfile.o
	ar rv $@ $^
	mv libWorkWithProfile.a ../libs

workWithProfile.o: workWithProfile.c
	gcc -c $^
	
clean:
	rm -f lib*.a *.o
	
	
	
