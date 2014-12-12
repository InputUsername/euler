var sieve = function(n) {
	var upperBound = Math.sqrt(n);
	var numbers = [];
	for (var i = 0; i < n; i++) {
		numbers.push(true);
	}
	
	for (var i = 2; i <= upperBound; i++) {
		if (numbers[i]) {
			for (var j = i * i; j < n; j += i) {
				numbers[j] = false;
			}
		}
	}
	
	var output = [];
	for (var i = 2; i < n; i++) {
		if (numbers[i]) {
			output.push(i);
		}
	}
	
	return output;
}

var primes = sieve(2000000);
var sum = primes.reduce(function(prev, current) {
	return prev + current;
}, 0);
console.log(sum);