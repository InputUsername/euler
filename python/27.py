import math

def is_prime(n):
	upperbound = math.ceil(math.sqrt(n))
	for i in range(2, upperbound):
		if n%i == 0:
			return False
	return True

def test_formula(a, b, n):
	x = n**2 + a*n + b
	return is_prime(abs(x))

longest = 0
product = 0

for a in range(-1000, 1001):
	for b in range(-1000, 1001):
		n = 0
		while test_formula(a, b, n):
			n += 1
			if n > longest:
				longest = n
				product = a*b

print(str(product))