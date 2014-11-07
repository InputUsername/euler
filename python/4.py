# Project Euler 4: find the largest palindrome made by multiplying two 3-digit numbers

largest = 0
for i in range(900,1000):
	for j in range(i, 1000):
		product = i * j
		if str(product) == str(product)[::-1] and product > largest:
			largest = product

print(largest)