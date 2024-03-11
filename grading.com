#include <stdio.h>
int main() {
    int mat, eng, kis;
    float average;
    printf("Enter score for eng: ");
    scanf("%d", eng);
    printf("Enter score for mat: ");
    scanf("%d", &mat);
    printf("Enter score for kis: ");
    scanf("%d", &kis);
    average = (eng + mat + kis) / 3.0;
    printf("The average score of eng,mat,kis, is: %.2f\n", average);
    if (average >= 90) {
        printf(grade A.\n");
    } else if (average >= 80) {
        printf("grade B.\n");
    } else if (average >= 70) {
        printf("grade C.\n");
    } else if (average >= 60) {
        printf("grade D.\n");
    } else {
        printf("grades E.\n");
    }

    return 0;
}
