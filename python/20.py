# Project Euler 20: find the sum of the digits of 100!

from math import factorial

sum = 0
n = int(factorial(100))

while n:
	sum, n = sum + n % 10, n // 10

print(sum)