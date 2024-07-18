#include <stdio.h>
#include <stdlib.h>
int main(int argc, char **argv)
{
	(void)argc;
	int num = atoi(argv[1]);
	int flag = 0;

	for (int i = 0; i < num; i++)
	if (flag) {
		printf("odd\n");
		flag = 0;
	} else {
		printf("even\n");
		flag = 1;
	}
}

