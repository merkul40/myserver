CC=gcc
CCFLAGS=-Wall
CLEAN=rm -f
AR=ar rv

libWorkWithFiles.a: workWithUsersFile.o
	ar rv $@ $^
	mv libWorkWithFiles.a ../libs

workWithUsersFile.o: workWithUsersFile.c
	gcc -c $^
	
clean:
	rm -f lib*.a *.o

	
	
