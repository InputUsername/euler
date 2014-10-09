## short version
#0 1{4000000<}{.@+}/\;.{2%},-{+}*

## explanation
0				#push 0
1				#push 1
{
	4000000<	#while TOS < 4,000,000
}
{
	.			#duplicate TOS		after first run => 0 1 1
	@			#rotate stack		after first run => 1 1 0
	+			#add top numbers	after first run => 1 1
}
/				#execute unfold/while loop with first block as the condition, second as the body
\;				#after execution, the last number is left on the stack - pop it
.				#duplicate TOS (Fibonacci array)
{2%}
,				#iterate over an array; collect numbers for which the block returns a truthy value into an array
-				#'subtract' arrays; remove every element that's in the second array from the first
{+}*			#fold the addition operator; add all elements in the array
				#no need for an explicit output; the stack is output at program end