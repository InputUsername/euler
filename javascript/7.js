var isPrime = function(n) {
	var upperBound = Math.sqrt(n);
	for (var i = 2; i <= upperBound; (i==2 ? i++ : i += 2)) {
		if (n % i == 0) {
			return false;
		}
	}
	return true;
}

var i = 0;
var n = 0;
var p = 0;
while (n <= 10002) {
	if (isPrime(i++)) {
		n += 1;
		p = i-1;
	}
}

console.log(p);