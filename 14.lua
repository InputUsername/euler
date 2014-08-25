local function collatz(x)
	if x%2==0 then return x/2 else return (3*x)+1 end
end

local longest=0
local start_longest=0

for start=1,999999 do
	local chain={}
	local n=start
	
	repeat
		n=collatz(n)
		chain[#chain+1]=n
	until n==1
	
	if #chain>longest then
		longest=#chain
		start_longest=start
	end
end

print(start_longest)
io.read()