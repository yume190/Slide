#include <stdlib.h>
#include <stdio.h>

int swift_add(int,int);
int main() {
	int a = 10000;
	int b = 2;
	printf("a + b = %d\n",swift_add(a,b));
	return 0;
}