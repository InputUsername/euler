# Project Euler 25: find the first Fibonacci number to contain 1000 digits

a, b = 1, 1
n = 2

while True:
	b, a = a+b, b
	n += 1
	if len(str(b)) == 1000:
		break

print(n)