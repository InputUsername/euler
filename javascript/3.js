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

var factorize = function(n) {
	var primes = sieve(Math.sqrt(n));
	var factors = [];
	var i = 0;
	while (i < primes.length) {
		p = primes[i];
		if (n % p == 0) {
			n /= p;
			factors.push(p);
		}
		else {
			i += 1;
		}
	}
	return factors;
}

var n = 600851475143;
var factors = factorize(n);
var highestIndex = factors.length - 1;

console.log(factors[highestIndex]);