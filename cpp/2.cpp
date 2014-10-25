#include <iostream>

using namespace std;

/* Project Euler 2
 * Find the sum of all even Fibonacci numbers below 4,000,000
 */
int main() {
    int a, b, temp, sum;
    a = b = 1;
    temp = sum = 0;

    while (a < 4000000) {
        temp = b;
        b = a + b;
        a = temp;

        if (a%2 == 0) {
            sum += a;
        }
    }

    cout << "Sum: " << sum;
}
