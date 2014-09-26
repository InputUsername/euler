--project euler 2: find the sum of all even Fibonacci numbers below 4,000,000
package.path = "..\\libraries\\?.lua;" .. package.path
require "lib"
local t = os.clock()

local sum = 0

for n in lib.fibonacci(4e6) do
	if (n%2 == 0) then
		sum = sum+n
	end
end

print("result: "..sum.." - found in "..(os.clock() - t).." s")