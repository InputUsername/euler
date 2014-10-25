#include <iostream>
#include <math.h>

using namespace std;

template <typename Type>
Type max_primefactor(Type n) {
    if (n <= 2) {
        return n;
    }

    Type test = 2;
    while (n > 1) {
        if (n%test == 0) n /= test;
        else test += 1;
    }

    return test;
}

/* Project Euler 3
 * Find the largest prime factor of 600,851,475,143
 */
int main() {
    long long number = 600851475143;
    int primefactor = static_cast<int>( max_primefactor(number) );

    cout << "Largest prime factor: " << primefactor << "\n";
}
