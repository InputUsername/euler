--project euler 21: find the sum of all amicable numbers below 10,000
package.path = "..\\libraries\\?.lua;" .. package.path
require "lib"
local t = os.clock()

local sum = 0

for i=1,9999 do
	for j=i,9999 do
		if (lib.amicable(i,j)) then
			sum = sum + i + j
		end
	end
end

print("result: "..sum.." - found in "..(os.clock() - t).." s")