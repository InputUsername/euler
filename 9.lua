local n

for a=1,1000 do
	for b=1,1000 do
		local c=1000-a-b
		if (a^2+b^2==c^2) then n=a*b*c break end
	end
end

print(n)