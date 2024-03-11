// Online C compiler to run C program online
#include <stdio.h>
#include<math.h>

int main() {
int p,t;
float r, ci;

printf("enter principal amount\n");
scanf("%d,%p");

printf("enter rate\n");
scanf("%f,%r");

printf("enter time\n");
scanf("%d,%t");

ci=p*pow((1+r/100),t);
printf("coumpound interest is %f\n",ci);


    return 0;
}
