
/*
fernando.ken@acad.pucrs.br
*/
#include<stdio.h>                       /*compilar com "\" dps (cc somaf.c s.c -o somaf) */

#include "s.h"

// extern float somar(float, float);		/* declaraçao a funçao */

//float somar(float x, float y)		/* definiçao da funçao */
//{
//	return x + y;			/* uso da funçao */
//}
int main(void)
{

	float a, b, soma;

	printf("Informe um número:");
	scanf("%f", &a);
	
	printf("Informe outro número:");
	scanf("%f", &b);

	soma = somar(a, b);

	printf("%f + %f = %.f.\n", a, b, soma);

	return 0;
}
