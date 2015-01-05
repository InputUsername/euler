import std.stdio;

/* Project Euler 2
 * Find the sum of all even-valued Fibonacci numbers not exceeding 4,000,000
 */
void main()
{
    int sum = 0;
    int previous = 0, current = 1;
    int temp;
    while (current <= 4000000)
    {
        temp = current;
        current += previous;
        previous = temp;
        
        if (current % 2 == 0)
        {
            sum += current;
        }
    }
    printf("Sum: %d\n", sum);
}
