simple intrest.com// Online C compiler to run C program online
#include <stdio.h>
#include <math.h>

int main() {
int p,t;
float r,si;

printf("enter principal amount\n");
scanf("%d",&p);

printf("enter rate\n");
scanf("%f", &r);

printf("enter time\n");
scanf("%d", &t);

si=(p*t*r)/100;

printf("simple interest is %f\n",si);

    return 0;
}
