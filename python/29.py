# Project Euler 29: amount of distinct terms in the sequence a^b
# with 2 <= a <= 100 and 2 <= b <= 100

seq = []

for a in range(2, 101):
	for b in range(2, 101):
		p = a**b
		if not p in seq:
			seq.append(p)

print(len(seq))