#include <stdio.h>

int main() {
    float salary, tax = 0;
    
    // Read the yearly salary of the employee
    printf("Enter the yearly salary of the employee: ");
    scanf("%f", &salary);
    
    // Calculate tax based on salary
    if (salary <= 400000) {
        tax = salary * 0.01; // 1% tax for salary less than or equal to 400,000
    } else if (salary > 400000 && salary <= 1000000) {
        tax = 400000 * 0.01; // 1% tax for the first 400,000
        tax += (salary - 400000) * 0.15; // 15% tax on the remaining amount
    } else if (salary > 1000000) {
        tax = 400000 * 0.01; // 1% tax for the first 400,000
        tax += 600000 * 0.15; // 15% tax for the next 600,000
        tax += (salary - 1000000) * 0.25; // 25% tax on the remaining amount
    }
    
    // Display the calculated tax
    printf("Tax amount: %.2f\n", tax);
    
    return 0;
}