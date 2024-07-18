#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv)
{
	(void)argc;
	int num = atoi(argv[1]);

	for (int i = 0; i < num; i++)
		if (i % 2 == 0)
			printf("even\n");
		else
			printf("odd\n");
}
