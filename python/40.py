# Project Euler 40: find d1 * d10 * d100 * d1000 * d10000 * d100000 * d1000000

ns = ''
i = 0
while len(ns) < 1000000:
	i += 1
	ns += str(i)

product = int(ns[0:1])
for i in (10, 100, 1000, 10000, 100000, 1000000):
	product *= int(ns[i-1:i])

print(product)