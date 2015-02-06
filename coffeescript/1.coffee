# Project Euler 1
# Sum of multiples of 3 or 5 below 1000

# One-liners yay
console.log [1...1000].filter((x) -> x % 3 == 0 || x % 5 == 0).reduce((t, s) -> t + s)
