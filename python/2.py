# Project Euler 2: find the sum of all even Fibonacci numbers below 4,000,000

#solution 1
sum = 0
a, b = 1, 1
while a < 4000000:
	b, a = a+b, b
	if a%2 == 0:
		sum += a

print(sum)

#solution 2
fib = [1,1]
while fib[-1] < 4e6:
	fib.append(fib[-2] + fib[-1])

print(sum([x for x in fib if x % 2 == 0]))