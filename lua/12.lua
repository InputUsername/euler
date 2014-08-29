-- project euler 12: find the first triangle number with more than 500 divisors
require "lib"

local n = 1
local d,t

while true do
	t = lib.triangle(n)
	d = lib.divisors(t)
	if (d > 500) then break end
	n = n+1
end

print(t)