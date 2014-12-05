def perm(x, y):
	def str_sort(s):
		return ''.join(sorted(s))
	return str_sort(str(x)) == str_sort(str(y))

x = 0

while True:
	x += 1
	if perm(x, 2*x):
		if perm(x, 3*x):
			if perm(x, 4*x):
				if perm(x, 5*x):
					if perm(x, 6*x):
						break

print(x)