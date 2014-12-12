var gcd = function(a, b) {
	while (b != 0) {
		var r = a % b;
		a = b;
		b = r;
	}
	return a;
}

var lcm = function(a, b) {
	return (Math.abs(a) / gcd(a, b) * Math.abs(b));
}

var number = 1;
for (var i = 1; i <= 20; i++) {
	number = lcm(i, number);
}

console.log(number);