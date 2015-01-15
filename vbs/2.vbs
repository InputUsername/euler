' Project Euler 2:
' Find the sum of all even Fibonacci numbers below 4,000,000

Dim previous, current
previous = 0
current = 1

Dim sum
sum = 0

Do
	Dim temp
	temp = current
	current = previous + current
	previous = temp
	
	If (current Mod 2 = 0) Then
		sum = sum + current
	End If
Loop While (current < 4000000)

WScript.Echo sum