#quick and dirty solution

from itertools import permutations

def div(start, stop, n, div_by):
	return (int(n[start:stop]) % div_by == 0)

sum = 0

for n in permutations('0123456789'):
	n = ''.join(n)
	if n[0:1] != '0':
		if div(1,4,n,2) and div(2,5,n,3) and div(3,6,n,5) and div(4,7,n,7) and div(5,8,n,11) and div(6,9,n,13) and div(7,10,n,17):
			sum += int(n)

print(sum)