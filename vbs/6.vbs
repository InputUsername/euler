' Project Euler 6:
' Find (1 + 2 + ... + 10)^2 - (1^2 + 2^2 + ... + 10^2)

Dim sumOfSquares, sum
sumOfSquares = 0
sum = 0

for i = 0 to 100
	sumOfSquares = sumOfSquares + (i ^ 2)
	sum = sum + i
next

Dim difference
difference = (sum ^ 2) - sumOfSquares

WScript.Echo difference