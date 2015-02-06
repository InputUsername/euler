# Project Euler 5
# Least common multiple of 1..20

gcd = (a, b) ->
	while b isnt 0
		t = b
		b = a % b
		a = t
	a

lcm = (a, b) -> (a * b) / gcd a, b

result = 1
for i in [1..20]
	result = lcm i, result

console.log result
