local function is_prime(n)
    for i=2,math.ceil(math.sqrt(n)) do
        if n%i==0 then return false end
    end
    return true
end

local n=1--starting at 1 as starting at 0 would be pointless
local sum=1

repeat
	if is_prime(n) then sum=sum+n end
	
	if n<=2 then
		n=n+1
	else
		n=n+2
	end
until n==2e6-1

print(sum)