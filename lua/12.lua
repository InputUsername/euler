-- project euler 12: find the first triangle number with more than 500 divisors

package.path = "..\\libraries\\?.lua;" .. package.path
require "lib"
local t = os.clock()

local n = 0
local dv,tr

while true do
	tr = lib.triangle(n)
	dv = lib.divisors(tr)
	if (dv > 500) then
		break
	end
	n = n+1
	print(n)
end

print("result: "..tr.." - found in "..(os.clock() - t).." s")