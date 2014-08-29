local function is_prime(n)
    for i=2,math.ceil(math.sqrt(n)) do
        if n%i==0 then return false end
    end
    return true
end

local nth_prime=10001
local current_number=0

local numbers={}

while true do
    if is_prime(current_number) then
        numbers[#numbers+1] = current_number
    end
    
    if #numbers-1==nth_prime then
       break
    end
    
    if current_number<=2 then
        current_number=current_number+1
    else
        current_number=current_number+2
    end
end

print(numbers[#numbers])