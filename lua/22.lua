--project euler 22: find the total of all name scores in the file (names-22.txt)
package.path = "..\\libraries\\?.lua;" .. package.path
require "lib"
local t = os.clock()

local names = lib.load_words("names-22.txt")

table.sort(names,function(a,b)
	return a<b
end)

local alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
local values = {}
for i=1,#alphabet do
	values[alphabet:sub(i,i)] = i
end

get_value = function(name)
	local sum = 0
	for c in name:gmatch(".") do
		sum = sum+values[c]
	end
	return sum
end

local total = 0
for i,name in ipairs(names) do
	total = total+(get_value(name)*i)
end

print("result: "..total.." - found in "..(os.clock() - t).." s")