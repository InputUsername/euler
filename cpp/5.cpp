#include <iostream>

using namespace std;

/* gcd and lcm - taken from
 *   http://stackoverflow.com/questions/4229870/c-algorithm-to-calculate-least-common-multiple-for-multiple-numbers#answer-4229930
 * because lazy
 */
int gcd(int a, int b) {
    for (;;) {
        if (a == 0) return b;
        b %= a;
        if (b == 0) return a;
        a %= b;
    }
}

int lcm(int a, int b) {
    int temp = gcd(a, b);

    return temp ? (a / temp * b) : 0;
}

/* Project Euler 5
 * Find the least common multiple of 1-20
 */
int main() {
    int result = 1;
    for (int i=1; i<=20; i++) {
        result = lcm(result, i);
    }
    cout << "Result: " << result << "\n";
}
