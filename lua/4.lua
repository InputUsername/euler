local tos,ton,rev=tostring,tonumber,string.reverse

local function is_palindrome(n)
    return tos(n)==rev(n)
end

local highest=0

for n1=100,999 do
    for n2=100,999 do
        local n=n2*n1
        if is_palindrome(n) and n>highest then
            highest=n
        end
    end
end

print(highest)