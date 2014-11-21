#project euler 50: find the prime number below 1000000 that can be written as the sum of the most consecutive primes
t = Time.new.to_f

require 'prime'

primes = Prime.take_while {|p|
	p < 1e6
}

def sum a
	a.map(&:to_i).reduce(:+)
end

result = 0

length = 1e6-1
while length > 2
	start_pos = 0
	end_pos = start_pos + length
	test_pos = end_pos + 1
	
	while test_pos <= 1e6
		s = sum primes[start_pos, end_pos]
		if s == primes[test_pos] then
			result = s
		end
		
		start_pos += 1
		end_pos = start_pos + length
		test_pos = end_pos + 1
	end
	
	length -= 1
end

puts "result: #{result} - found in #{((Time.new.to_f - t)*1000).round 3} ms"