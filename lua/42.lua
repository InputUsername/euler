local file = assert(io.open(".\\files\\words.txt","r"))
local words = file:read("*all")
file:close()
local chunk = "return {"..words.."}"
words = loadstring(chunk)()

local t = {}

for n=1,1e7 do
	local i = 0.5 * n * (n+1)
	t[0.5*n*(n+1)] = true
end

local alphabet="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
local values={}
for i=1,#alphabet do
	values[alphabet:sub(i,i)]=i
end

local value = function(word)
	local sum=0
	for c in word:gmatch(".") do
		sum = sum + values[c]
	end
	return sum
end

local total = 0

for _,word in pairs(words) do
	local v = value(word)
	
	if t[v] then
		total = total + 1
	end
end

print(total)