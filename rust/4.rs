/*
 * Project Euler 4
 * Find the largest palindrome product made by multiplying two 3-digit numbers
 */

#![feature(collections)]
#![feature(core)]

fn is_palindromic(num: u32) -> bool {
	let num_str = num.to_string();
	let rev_num_str: String = num_str.as_slice().chars().rev().collect();
	return rev_num_str == num_str;
}

fn main() {
	let mut largest = 0;
	for a in 900u32..999 {
		for b in a..999 {
			let product = a * b;
			if is_palindromic(product) && product > largest {
				largest = product;
			}
		}
	}

	println!("Largest: {}", largest);
}
