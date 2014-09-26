--project euler 3: find the largest prime factor of 600851475143
package.path = "..\\libraries\\?.lua;" .. package.path
require "lib"
local t = os.clock()

local result = lib.max_primefactor(600851475143)

print("result: "..result.." - found in "..(os.clock() - t).." s")