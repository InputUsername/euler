' Project Euler 1:
' Find the sum of all multiples of 3 and 5 below 1,000

Dim sum
sum = 0

For i = 0 To 1000
	If (i Mod 3 = 0) Or (i Mod 5 = 0) Then
		sum = sum + i
	End If
Next

WScript.Echo sum