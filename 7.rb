# project euler 7: find the 10001st prime number
require 'prime'
t = Time.new.to_f
prime = Prime.take(10001).last
puts "result: #{prime} - found in #{((Time.new.to_f - t)*1000).round 3} ms"