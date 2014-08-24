# project euler 2: find all even fibonacci numbers below 4,000,000
t = Time.new.to_f
f1,f2,sum = 0,1,0
while f1<4000000
	f1,f2 = f2,f1+f2
	sum += f1 if f1.even?
end
puts "result: #{sum} - found in #{((Time.new.to_f - t)*1000).round 3} ms"