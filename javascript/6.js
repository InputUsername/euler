var sumOfSquares = 0;
var sum = 0;
for (var i = 1; i <= 100; i++) {
	sumOfSquares += (i * i);
	sum += i;
}
var squareSum = (sum * sum);

console.log(squareSum - sumOfSquares);