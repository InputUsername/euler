#include <stdio.h>

/* Project Euler 6
 * Find the difference between the square of the sum of 1-100 (1...100)^2 and the sum of the squares of 1-100 (1^2...100^2)
 */
int main(int argc, char *argv[])
{
    int square_sum = 0;
    int sum_of_squares = 0;
    int difference;

    int i;
    for (i = 1; i <= 100; i++) {
        square_sum += i;
        sum_of_squares += (i * i);
    }

    difference = (square_sum * square_sum) - sum_of_squares;
    printf("Result: %d\n", difference);

    return 1;
}
