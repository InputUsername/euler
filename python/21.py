# Project Euler 21: find the sum of amicable numbers below 10,000

# Cheating: does not run in under 1 minute

from math import ceil

divisor_sum = {}

for i in range(1, 10001):
	divisor_sum[i] = sum(x for x in range(1, i) if i % x == 0)

def d(n):
	return divisor_sum[n]

def amicable(a, b):
	return (a != b) and (d(a) == b) and (d(b) == a)

amicable_sum = 0
already_had = []

for a in range(1, 10001):
	for b in range(1, 10001):
		if not ((a in already_had) or (b in already_had)):
			if amicable(a, b):
				amicable_sum += a
				amicable_sum += b
				already_had.append(a)
				already_had.append(b)

print(amicable_sum)
