import std.stdio;

/* Project Euler 1
 * Find the sum of all multiples of 3 or 5 below 1,000
 */
void main()
{
    int sum = 0;
    for (int i = 0; i < 1000; i++)
    {
	    if (i % 3 == 0 || i % 5 == 0)
	    {
	        sum += i;
	    }
    }
    printf("Sum: %d\n", sum);
}
