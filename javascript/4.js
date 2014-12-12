var isPalindrome = function(n) {
	var s = n.toString();
	return (s === s.split("").reverse().join(""));
}

var largest = 0;
for (var a = 0; a <= 999; a++) {
	for (var b = a; b <= 999; b++) {
		var product = a * b;
		if (isPalindrome(product) && product > largest) {
			largest = product;
		}
	}
}

console.log(largest);