CC=gcc
CCFLAGS=-Wall
MAKE=make
CLEAN=rm -f
PROGRAM_NAME=myserver
OBJECT=myserver.o
SOURCE=myserver.c
LIB_FILES=libWorkWithFiles.a
OBJ_FILES=workWithFiles.o
LIB_PROFILE=libWorkWithProfile.a
OBJ_PROFILE=workWithProfile.o

$(PROGRAM_NAME): myserver.o  $(LIB_FILES) $(LIB_PROFILE)
	$(CC) $(CCFLAGS) -o $(PROGRAM_NAME) $(OBJECT) -L./libs -lWorkWithFiles -lWorkWithProfile
	
$(OBJECT): $(SOURCE)
	gcc -c -IworkWithFiles -IworkWithProfile $^
	
libWorkWithFiles.a:
	$(MAKE) --directory=workWithFiles #$(OBJ_FILES)
	
libWorkWithProfile.a:
	$(MAKE) --directory=workWithProfile #$(OBJ_PROFILE)
	
clean:
	$(CLEAN) *.o $(PROGRAM_NAME)
	$(CLEAN) ./libs/*.a
	$(MAKE) -C workWithProfile clean
	$(MAKE) -C workWithFiles clean

	


