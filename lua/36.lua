--project euler 36: find the sum of all numbers below 1,000,000 which are palindromic in base 10 and base 2
package.path = "..\\libraries\\?.lua;" .. package.path
require "lib"
local t = os.clock()

local sum = 0

for i=0,(1e6)-1,1 do
    if (lib.is_palindrome(i)) then
        local b = lib.to_binary(i)
        if (lib.is_palindrome(b)) and (b:sub(1,1) ~= "0") then
            sum = sum+i
        end
    end
end

print("result: "..sum.." - found in "..(os.clock() - t).." s")