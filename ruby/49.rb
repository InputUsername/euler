# project euler 49: find the 12-digit number formed by concatenating three terms in a specific sequence
t = Time.new.to_f

require 'prime'

result = 0

primes = Prime
	.take_while {|p| p <= 9999}
	.find_all {|p| p > 1000}
amount = primes.size

def permutation?(a, b)
	a, b = a.to_s, b.to_s
	a.chars.sort.join == b.chars.sort.join
end

for a in 0...amount
	prime_a = primes[a]
	
	for b in 0...amount
		prime_b = primes[b]
		
		#check if a and b are permutations and if a < b
		if permutation?(prime_a, prime_b) and prime_a < prime_b then
			for c in 0..amount
				prime_c = primes[c]
				
				#check if b and c are permutations
				#AND check if b < c
				#AND if the distance between a and b is equal to the distance between b and c
				if permutation?(prime_b, prime_c) and prime_b < prime_c and (prime_b - prime_a == prime_c - prime_b) then
					result = primes[a].to_s + primes[b].to_s + primes[c].to_s
					break
				end
			end
		end
	end
end

puts "result: #{result} - found in #{((Time.new.to_f - t)*1000).round 3} ms"