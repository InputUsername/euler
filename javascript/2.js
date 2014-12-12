var a = 1;
var b = 1;
var sum = 0;

while (a <= 4000000) {
	var temp = b;
	b = a + b;
	a = temp;
	
	if (a % 2 == 0) {
		sum += a;
	}
}

console.log(sum);