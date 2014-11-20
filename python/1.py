# Project Euler 1: find the sum of all multiples of 3 and 5 below 1000

print(sum(x for x in range(0,1000) if not (x % 3 and x % 5)))