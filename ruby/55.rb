# project euler 55: find the amount of "Lychrel" numbers below 10000
t = Time.new.to_f

def next_lychrel(n)
	n + n.to_s.reverse.to_i
end
def palindrome?(n)
	n.to_s.reverse == n.to_s
end

total = 10000
to_check = 0
test = 0
iterations = 0

while to_check<10000
	test = next_lychrel(to_check)
	iterations = 0
	while iterations < 50 #cheat
		if palindrome?(test) then
			total -= 1
			break
		end
		iterations += 1
		test = next_lychrel(test)
	end
	to_check+=1
end

puts "result: #{total} - found in #{((Time.new.to_f - t)*1000).round 3} ms"