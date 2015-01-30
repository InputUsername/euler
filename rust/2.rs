/*
 * Project Euler 2
 * Find the sum of all even Fibonacci numbers not exceeding 4,000,000
 */

fn main() {
    let mut sum = 0;
    let mut previous = 0;
    let mut current = 1;

    while current < 4000000 {
        if current % 2 == 0 {
            sum += current;
        }
        let temp = current;
        current = previous + current;
        previous = temp;
    }

    println!("Sum: {}", sum);
}
