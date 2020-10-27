#include <stdio.h>

// X = K - B2 - C1 - D2/E1 + F2*B2; K = 45781022h = 1165496354

extern "C" double calc(double, float, double, float, double);

int main()
{
	double B = 0;
	float C = 0;
	double D = 0;
	float E = 0;
	double F = 0;
	double Res = 0;
	printf("Enter numbers: \n");
	printf("B = ");
	scanf_s("%lf", &B);
	printf("C = ");
	scanf_s("%f", &C);
	printf("D = ");
	scanf_s("%lf", &D);
	printf("E = ");
	scanf_s("%f", &E);
	printf("F = ");
	scanf_s("%lf", &F);
	Res = calc(B, C, D, E, F);
	printf("Result is: %lf", Res);

	return 0;
}