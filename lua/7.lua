--project euler 7: find the 10001st prime
package.path = "..\\libraries\\?.lua;" .. package.path
require "lib"
local t = os.clock()

local i,result = 0,0

while true do
	result = result+1
	if (lib.is_prime(result)) then
		i = i+1
	end
	if (i == 10001) then
		break
	end
end

print("result: "..result.." - found in "..(os.clock() - t).." s")