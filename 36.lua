--localize functions for speed
local tos,rev,sub=tostring,string.reverse,string.sub

--as Lua does not have a built-in decimal-to-binary function
local bin = function(n)
    local c=n
    local b={}
    while(c~=0)do
        table.insert(b,c%2)
        c=math.floor(c/2)
    end
    return rev(table.concat(b,""))
end

local sum=0
for i=0,(1e6)-1,1 do
    if tos(i)==rev(i) then
		--create variables for speed (not having to calculate rev(bin(i)) twice)
        local r=rev(bin(i))
        if bin(i)==r and sub(r,1,1)~="0" then
            sum=sum+i
        end
    end
end
print(sum)