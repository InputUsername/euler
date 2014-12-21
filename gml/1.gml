var sum;
sum = 0;

for (i=1; i < 1000; i += 1) {
    if (i mod 3 == 0 || i mod 5 == 0) {
        sum += i;
    }
}

show_message(string(sum));