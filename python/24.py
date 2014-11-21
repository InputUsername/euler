from itertools import permutations

i = 0
n = 0

numbers = [x for x in range(0,10)]
for perm in permutations(numbers):
	i += 1
	if i == 1e6:
		n = "".join([str(x) for x in perm])
		break

print(n)