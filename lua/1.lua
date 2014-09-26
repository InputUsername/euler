--project euler 1: find the sum of all multiples of 3 or 5 below 1000
local t = os.clock()

local sum = 0

for i=0,999 do
    if (i%3 == 0) or (i%5 == 0) then
		sum = sum+i
	end
end

print("result: "..sum.." - found in "..(os.clock() - t).." s")