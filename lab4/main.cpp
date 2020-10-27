#include <stdio.h>

extern "C" double calc(double, float, float);

int main()
{
	double arr[5] = {23.5, 10.0, 2.0, 11.1, 9.8};
	float c = 0;
	float d = 0;
	double res = 0;
	printf("Enter numbers: \n");
	printf("C = ");
	scanf_s("%f", &c);
	printf("D = ");
	scanf_s("%f", &d);
	printf("\nCalculation result: \n");
	for(int i = 0; i < 5; ++i)
	{
		res = calc(arr[i], c, d);
		printf("X%d = %lf\n", i, res);
	}
	return 0;
}