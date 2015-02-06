# Project Euler 4
# Largest palindrome made by nnn * nnn

isPalindrome = (n) ->
	s = ('' + n)
	s.split('').reverse().join('') is s

largest = 0

for i in [100..999]
	for j in [i..999]
		product = i * j
		if isPalindrome(product) && product > largest
			largest = product

console.log largest
