t = Time.new.to_f
n = 1
for i in 1..20
	n = n.lcm(i)
end
puts "result: #{n} - found in #{((Time.new.to_f - t)*1000).round 3} ms"