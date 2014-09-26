--project euler <n>: <description>
package.path = "..\\libraries\\?.lua;" .. package.path
require "lib"
local t = os.clock()

local result

--insert code

print("result: "..result.." - found in "..(os.clock() - t).." s")