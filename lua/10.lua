--project euler <n>: <description>
package.path = "..\\libraries\\?.lua;" .. package.path
require "lib"
local t = os.clock()

local n = 1
local sum = 1

repeat
	if (lib.is_prime(n)) then
		sum = sum+n
	end
	
	if (n <= 2) then
		n = n+1
	else
		n = n+2
	end
until (n == 2e6-1)

print("result: "..sum.." - found in "..(os.clock() - t).." s")