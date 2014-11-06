# Project Euler 16: find the sum of the digits of 2^1000

sum = 0
n = 2**1000

while n:
	sum, n = sum + n % 10, n // 10

print(sum)