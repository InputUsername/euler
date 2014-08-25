function F()
	local f={1,1}
	local i=3
	local sum=0
	
	while true do
		if i>4 then
			f[i-3] = nil
			f[i-4] = nil
		end
		
		f[i]=f[i-1]+f[i-2]
		
		if f[i]%2==0 then
			sum=sum+f[i]
		end
		i=i+1
		
		if (f[i] and f[i]>4e6) then break end
	end
	
	return sum
end

print(F())