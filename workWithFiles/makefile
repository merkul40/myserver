CC=gcc
CCFLAGS=-Wall
CLEAN=rm -f
AR=ar rv

libWorkWithFiles.a: workWithUsersFile.o
	ar rv $@ $^

workWithUsersFile.o: workWithUsersFile.c
	gcc -c $^
	

	
	
