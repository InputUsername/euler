var n = 0;
for (var a = 1; a <= 1000; a++) {
	for (var b = 1; b <= 1000; b++) {
		var c = 1000 - a - b;
		if (a*a + b*b == c*c) {
			n = a * b * c;
			break;
		}
	}
}
console.log(n);