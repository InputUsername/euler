' Project Euler 4:
' Find the largest palindromic number made by multiplying two 3-digit numbers

Function isPalindromic(intNumber)
	Dim strNumber
	strNumber = CStr(intNumber)
	
	Dim result
	If (StrReverse(strNumber) = strNumber) Then
		result = True
	End If
	
	isPalindromic = result
End Function

Dim largest
largest = 0

For i = 100 To 1000
	For j = 100 To 1000
		Dim product
		product = i * j
		If (isPalindromic(product)) Then
			If (product > largest) Then
				largest = product
			End If
		End If
	Next
Next

WScript.Echo largest