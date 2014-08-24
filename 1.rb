# project euler 1: find the sum of all multiples of 3 or 5 below 1000
t = Time.new.to_f
sum = 0
for i in 0...1000 do
	sum += i if i%3==0 || i%5==0
end
puts "result: #{sum} - found in #{((Time.new.to_f - t)*1000).round 3} ms"