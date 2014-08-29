local function ism(n)
    return (n%5==0 or n%3==0)
end

local sum=0
for i=0,999 do
    if ism(i) then sum=sum+i end
end
print(sum)