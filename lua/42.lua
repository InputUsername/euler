--project euler 42: find the amount of triangle words in a file (words-44.txt)
package.path = "..\\libraries\\?.lua;" .. package.path
require "lib"
local t = os.clock()

local words = lib.load_words("words-42.txt")
local tr = {}

for n=1,1e7 do
	local i = 0.5 * n * (n+1)
	tr[0.5 * n * (n+1)] = true
end

local alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
local values = {}
for i=1,#alphabet do
	values[alphabet:sub(i,i)] = i
end

local value = function(word)
	local sum = 0
	for c in word:gmatch(".") do
		sum = sum + values[c]
	end
	return sum
end

local total = 0

for _,word in pairs(words) do
	local v = value(word)
	
	if tr[v] then
		total = total + 1
	end
end

print("result: "..total.." - found in "..(os.clock() - t).." s")