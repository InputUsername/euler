#include <iostream>

using namespace std;

/* Project Euler 1
 * Find the sum of all multiples of 3 and 5 below 1000
 */
int main() {
    int sum = 0;
    for (int i=0; i<1000; i++) {
        if (i%3 == 0 || i%5 == 0) {
            sum += i;
        }
    }
    cout << "Sum: " << sum << "\n";
}
