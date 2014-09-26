--project euler 4: find the largest palindrome made from the product of two 3-digit numbers
package.path = "..\\libraries\\?.lua;" .. package.path
require "lib"
local t = os.clock()

local highest = 0

for n1=100,999 do
    for n2=100,999 do
        local n = n2*n1
        if (lib.is_palindrome(n)) and (n > highest) then
            highest = n
        end
    end
end

print("result: "..highest.." - found in "..(os.clock() - t).." s")