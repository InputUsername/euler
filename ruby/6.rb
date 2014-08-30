# project euler 6: find (1 + 2 + ... + 100)^2 - (1^2 + 2^2 + ... + 100^2)
t = Time.new.to_f
sum1,sum2 = 0,0
(1..100).to_a.each {|n| sum1 += n}
(1..100).to_a.each {|n| sum2 += n**2}
result = sum1**2 - sum2
puts "result: #{result} - found in #{((Time.new.to_f - t)*1000).round 3} ms"