# project euler 1: find the sum of all multiples of 3 or 5 below 1000
t = Time.new.to_f
sum = (0..999).inject{|sum,i| i%3==0||i%5==0 ? sum+i : sum}
puts "result: #{sum} - found in #{((Time.new.to_f - t)*1000).round 3} ms"