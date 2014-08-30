# project euler 17: find the amount of letters used if the numbers 1 to 1000 were to be written out
t = Time.new.to_f

#split a number into digits
def sp(n)
	n.to_s.split('').map! {|n|
		n.to_i
	}
end
def written_number(n)
	if n.between?(1,9) then
		return ["one","two","three","four","five","six","seven","eight","nine"][n-1]
	else n.between?(10,99) then
		if n<20 then
			return ["ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"][n-10]
		else
			ret = ["twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"][sp(n)[0]-1]
			ret += "-" + written_number(sp(n)[1]-1)
				unless [20,30,40,50,60,70,80,90].include? n
		end
	else n.between?(100,999) then
		s = sp(n)
		ret = written_number(s[0]-1) + " hundred"
		ret += " and " + written_number(s[1..s.length] #TODO: continue here
		if [100,200,300,400,500,600,700,800,900].include? n then
	else if n == 1000 then
		return "one thousand"
	end
end
arr = []
for i in (1..1000)

end