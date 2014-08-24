# project euler 4: find the largest palindrome made from the product of two 3-digit numbers
t = Time.new.to_f
def palindrome?(n)
	n.to_s == n.to_s.reverse
end
largest = 0
for i in 0..999
	for j in 0..999
		largest = i*j if palindrome?(i*j)&&i*j>largest
	end
end
puts "result: #{largest} - found in #{((Time.new.to_f - t)*1000).round 3} ms"