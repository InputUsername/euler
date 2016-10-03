n = 1001
sqr = n*n

grid = [[0 for x in range(n)] for y in range(n)]

grid[n//2][n//2] = 1
grid[n//2][n//2 + 1] = 2
grid[n//2 + 1][n//2 + 1] = 3

# 0 = right, 1 = down, 2 = left, 3 = up
d = 2
x = n//2
y = n//2 + 1

step = 1
max_step = 2
incr = False

val = 4

while val <= sqr:
	if step < max_step:
		if (x >= 0) and (x < n) and (y >= 0) and (y < n):
			grid[y][x] = val

		if d == 0: x += 1
		elif d == 1: y += 1
		elif d == 2: x -= 1
		else: y -= 1

		val += 1
		step += 1
	else:
		if not incr:
			incr = True
		else:
			max_step += 1
			incr = False

		d = (d + 1) % 4
		step = 0

total = 0

for pos in range(n):
	total += grid[pos][pos]
	total += grid[n - pos - 1][pos]

total -= 1

print(total)
