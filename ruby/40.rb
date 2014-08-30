# project euler 40: find d1 * d10 * d100 * d1,000 * d10,000 * d100,000 * d1000,000
t = Time.new.to_f
p = 1
n = 1
i = 0
x = 0
while true
	i += 1
	
	p *= n
	if x == 7 then break else x += 1 end
end