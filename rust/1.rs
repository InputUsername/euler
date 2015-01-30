/*
 * Project Euler 1
 * Find the sum of all multiples of 3 or 5 below 1,000
 */

fn main() {
    let mut sum = 0;

    for i in 0u32..1000 {
        if i % 3 == 0 || i % 5 == 0 {
            sum += i;
        }
    }

    println!("Sum: {}", sum);
}
