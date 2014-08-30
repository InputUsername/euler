require "prime"

module Lib
	# load a list of words, formatted as "WORD","WORD 2","ETC"
	def Lib.load_list_file(file)
		file = File.new(file,"r")
		words = file.gets.tr("\"","").split(",")
		file.close
		words
	end

	# return the nth triangle number
	def Lib.get_triangle(n)
		return 0.5*n*(n+1)
	end

	def Lib.factorize(n)
		primes = Prime.take_while {|p| p < n}
		ret = []
		primes.each {|p|
			while n%p == 0 do
				n /= p
				ret << p
			end
		}
		ret
	end
end