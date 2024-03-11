#include <stdio.h>

int main() {
    int customerID, unitConsumed;
    char customerName[50];

    // Prompting user for input
    printf("Enter Customer ID: ");
    scanf("%d", &customerID);
    printf("Enter Customer Name: ");
    scanf("%s", customerName);
    printf("Enter Units Consumed: ");
    scanf("%d", &unitConsumed);

    // Calculating charges based on units consumed
    int chargesPerUnit;
    if (unitConsumed <= 300) {
        chargesPerUnit = 175;
    } else if (unitConsumed <= 600) {
        chargesPerUnit = 200;
    } else if (unitConsumed < 800) {
        chargesPerUnit = 300;
    } else {
        chargesPerUnit = 400;
    }

    // Calculating total bill before surcharge
    int totalBill = unitConsumed * chargesPerUnit;

    // Applying surcharge if bill exceeds 500
    if (totalBill > 500) {
        totalBill += totalBill * 0.20; // 20% surcharge
    }

    // Ensuring minimum bill of Kshs 200
    if (totalBill < 200) {
        totalBill = 200;
    }

    // Displaying output
    printf("\nCustomer ID: %d\n", customerID);
    printf("Customer Name: %s\n", customerName);
    printf("Units Consumed: %d\n", unitConsumed);
    printf("Charges per Unit: Ksh %d\n", chargesPerUnit);
    printf("Total Amount to Pay: Ksh %d\n", totalBill);

    return 0;
}