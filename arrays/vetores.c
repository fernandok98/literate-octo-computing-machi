#include<stdio.h>
#include<stdlib.h>
#define SIZE 10

int main(void)
{
    int total = 0;
    int j;
    int s[SIZE];

    for( j = 0 ; j < SIZE ; j++) { /*j++ ou j = j + 1 ou j += 1*/
        s[j] = 2 + 2 * j;
    }

    for( j = 0 ; j < SIZE ; j++) { /*j++ ou j = j + 1 ou j += 1*/
        total += s[j];
    }

    printf("%s%14s\n", "Elemento", "Valor");

    for( j = 0 ; j < SIZE ; j++) { /*j++ ou j = j + 1 ou j += 1*/
        printf("%8d %13d\n", j, s[j]);
    }

    printf("%8s%14d\n", "Total", total);

    return EXIT_SUCCESS;
}

