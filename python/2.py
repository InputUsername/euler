# Project Euler 2: find the sum of all even Fibonacci numbers below 4,000,000

sum = 0
a, b = 1, 1
while a < 4000000:
	b, a = a+b, b
	if a%2 == 0:
		sum += a

print(sum)