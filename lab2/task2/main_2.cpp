#include <stdio.h>

extern "C" int calc(signed char, signed char, short);

int main()
{
	signed char b = 0;
	signed char c = 0;
	short d = 0;
	int res = 0;
	printf("Enter numbers:\n");
	printf("B = ");
	scanf_s("%hhd", &b);
	printf("C = ");
	scanf_s("%hhd", &c);
	printf("D = ");
	scanf_s("%hd", &d);
	res = calc(b, c, d);
	return 0;
}