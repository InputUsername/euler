-- project euler library for Lua

module "lib"

--returns a Fibonacci iterator that will yield values up to maxf
--use nil to keep yielding forever
fibonacci = function(maxf)
	local f1,f2 = 1,1
	return function()
		local nextf = f1
		if (maxf) and (nextf > maxf) then return end
		f1,f2 = f2,f1+f2
		
		return nextf
	end
end

--returns the number of divisors of n
local divisors = function(n)
	local count = 2
	local i = 2
	while (i^2 <= n) do
		if (n%i == 0) then
			count = count+2
		end
		i = i+1
	end
	return count
end

--returns the n-th triangle number
local triangle = function(n)
	return (0.5*n)*(n+1)
end