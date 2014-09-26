--project euler 14: find the starting number below one million from which the longest Collatz sequence is produced
package.path = "..\\libraries\\?.lua;" .. package.path
require "lib"
local t = os.clock()

local longest=0
local start_longest=0

for start=1,999999 do
	local chain = {}
	local n = start
	
	repeat
		n = lib.collatz(n)
		table.insert(chain,n)
	until (n==1)
	
	if (#chain > longest) then
		longest = #chain
		start_longest = start
	end
end

print("result: "..start_longest.." - found in "..(os.clock() - t).." s")