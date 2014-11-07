-- project euler library for Lua

module("lib", package.seeall)

--returns a Fibonacci iterator that will yield values up to maxf
--use nil to keep yielding forever
fibonacci = function(maxf)
	local f1,f2 = 1,1
	return function()
		local nextf = f1
		if (maxf) and (nextf > maxf) then
			return
		end
		
		f1,f2 = f2,f1+f2
		
		return nextf
	end
end

--returns the number of divisors of n
divisors = function(n)
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

--returns all divisors of n
find_divisors = function(n)
	local i = 2
	local d = {}
	while (2*i < n) do
		if (n%i == 0) then
			table.insert(d,i)
		end
		i = i+1
	end
	return d
end

amicable = function(n,m)
	local d = function(n)
		local s,div = 0,find_divisors(n)
		for i=1,#div do s = s+div[i] end
		return s
	end
	return d(n) == m and n == d(m)
end

--returns the n-th triangle number
triangle = function(n)
	return (0.5*n)*(n+1)
end

--returns the largest prime factor of n
max_primefactor = function(n)
	if (n == 1) then
		return 1
	end
	
	local test = 2
	while (n > 1) do
		if (n%test == 0) then
			n = n/test
		else
			test = test+1
		end
	end
	
	return test
end

--checks if n is a palindrome
--n can also be a string
is_palindrome = function(n)
	n = tostring(n)
	return (n == n:reverse())
end

--finds the greatest common divisor of a and b
gcd = function(a,b)
	local t
	while (b ~= 0) do
		t = b
		b = a%b
		a = t
	end
	return a
end

--finds the least common multiple of a and b
lcm = function(a,b)
	if (a == 0) and (b == 0) then
		return 0
	end
	return math.abs(a*b)/gcd(a,b)
end

--checks if n is prime
is_prime = function(n)
	for i=2,math.ceil(math.sqrt(n)) do
        if (n%i == 0) then
			return false
		end
    end
    return true
end

--returns the next number in the Collatz sequence for n
collatz = function(n)
	if (n%2 == 0) then
		return n/2
	else
		return (3*n)+1
	end
end

--load a comma-separated, quoted words file into a table
load_words = function(file)
	local file = assert(io.open("..\\files\\"..file,"r"))
	local words = file:read("*all")
	file:close()
	local chunk = "return {"..words.."}"
	return loadstring(chunk)()
end

--convert n to a binary string
to_binary = function(n)
    local c = n
    local b = {}
    while (c ~= 0) do
        table.insert(b,c%2)
        c = math.floor(c/2)
    end
    return table.concat(b,""):reverse()
end