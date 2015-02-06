# Project Euler 2
# Sum of all even Fibonacci numbers below 4,000,000

sum = 0

[a, b] = [1, 1]

while b < 4000000
  sum += b if b % 2 is 0
  [a, b] = [b, a + b]

console.log sum
