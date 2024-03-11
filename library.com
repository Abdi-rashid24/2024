#include <stdio.h>

int calculateFine(int dueDate, int returnDate) {
    int daysOverdue = returnDate - dueDate;
    int fine = 0;
    
    if (daysOverdue <= 7) {
        fine = daysOverdue * 20;
    } else if (daysOverdue <= 14) {
        fine = 7 * 20 + (daysOverdue - 7) * 50;
    } else {
        fine = 7 * 20 + 7 * 50 + (daysOverdue - 14) * 100;
    }
    
    return fine;
}

int main() {
    int bookID, dueDate, returnDate;
    
    printf("Enter book ID: ");
    scanf("%d", &bookID);
    
    printf("Enter due date: ");
    scanf("%d", &dueDate);
    
    printf("Enter return date: ");
    scanf("%d", &returnDate);
    
    int fine = calculateFine(dueDate, returnDate);
    
    printf("\nBook ID: %d\n", bookID);
    printf("Due Date: %d\n", dueDate);
    printf("Return Date: %d\n", returnDate);
    printf("Fine: Ksh. %d\n", fine);
    
    return 0;
}