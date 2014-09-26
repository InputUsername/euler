-- project euler 12: find the first triangle number with more than 500 divisors

--NOT WORKING!!! FIX!!!

package.path = "..\\libraries\\?.lua;" .. package.path
require "lib"
local t = os.clock()

local n = 1
local dv,tr

while true do
	tr = lib.triangle(n)
	dv = lib.divisors(t)
	if (dv > 500) then
		break
	end
	n = n+4
	print(n)
end

print("result: "..tr.." - found in "..(os.clock() - t).." s")