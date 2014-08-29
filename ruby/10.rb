# project euler 10: find the sum of all primes below 2,000,000
require 'prime'
t = Time.new.to_f
sum = Prime.take_while {|p| p < 2000000}.inject {|sum,p| sum + p}
puts "result: #{sum} - found in #{((Time.new.to_f - t)*1000).round 3} ms"