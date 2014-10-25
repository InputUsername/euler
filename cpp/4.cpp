#include <iostream>
#include <string>
#include <sstream>

using namespace std;

template <typename Type>
bool is_palindrome(Type n) {
    string result, reversed;
    ostringstream convert;
    convert << n;

    result = convert.str();
    reversed = string(result.rbegin(), result.rend());

    return result == reversed;
}

/* Project Euler 4
 * Find the largest palindrome number made by multiplying two 3-digit numbers
 */
int main() {
    int highest, product;
    highest = product = 0;

    for (int i=900; i<1000; i++) {
        for (int j=i; j<1000; j++) {
            product = i * j;
            if (is_palindrome(product) && product > highest) {
                highest = product;
            }
        }
    }

    cout << "Highest palindrome: " << highest << "\n";
}
