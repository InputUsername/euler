local function p(n)
	if n==1 then
		return 1
	end
	
	local test = 2
	while n > 1 do
		if n%test == 0 then
			n = n/test
		else
			test = test+1
		end
	end
	
	return test
end

print(p(600851475143))