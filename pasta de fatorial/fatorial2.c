
/*
	fernando.ken@acad.pucrs.br
*/
#include<stdio.h>

double fatorial(double);

double fatorial(double n)
{
	double r = 1L;
	double f;

	for(f = 1 ; f <= n ; f = f + 1)
		r = r * f;

	return r;
}

int main(void)
{
	double n;
	
	printf("Digite um número para ser lido o fatorial:");
	scanf("%lf", &n);
	double f = fatorial(n);
	printf("N=%.0lf, F=%.0lf\n", n, f);
	return 0;
}
