# project euler 17: find the amount of letters used if the numbers 1 to 1000 were to be written out
t = Time.new.to_f

#split n into digits
def d(n)
	n.to_s.chars.map(&:to_i)
end
#return the number, written out. does not include spaces/hyphens so output can be used directly
def written(n)
	ret = ""
	if (1..9).include? n #numbers 1-9
		ret = ["one","two","three","four","five","six","seven","eight","nine"][n - 1]
	elsif (10..19).include? n #numbers 10-19
		ret = ["ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"][n - 10]
	elsif (20..99).include? n #numbers 20-99
		digits = d(n)
		ret = ["twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"][digits[0] - 2]
		if n%10 != 0 then ret += written(digits[1]) end
	elsif (100..999).include? n #numbers 100-999
		digits = d(n)
		ret = written(digits[0]) + "hundred"
		if n%100 != 0
			ret += "and"
			ret += written(digits[1,2].join.to_i)
		end
	else #number 1000
		ret = "onethousand"
	end
	return ret
end
sum = 0
for i in 1..1000
	sum += written(i).length
end
puts "result: #{sum} - found in #{((Time.new.to_f - t)*1000).round 3} ms"