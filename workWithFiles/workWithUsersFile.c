#include <stdio.h>
//#include <stdlib.h>

int openUsersFile(char name[])
{
	FILE *fileFlow;
	if ((fileFlow = fopen(name, "a")) == NULL)//либо открываем, либо ошибка
		{
			fprintf(stderr, "Не удалось открыть файл\n");
			return 1;
			}
	fclose (fileFlow);
	return 0;
	}
