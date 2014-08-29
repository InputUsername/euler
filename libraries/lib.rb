# load a list of words, formatted as "WORD","WORD 2","ETC"
def load_list_file(file)
	file = File.new(file,"r")
	words = file.gets.tr("\"","").split(",")
	file.close
	words
end

# return the nth triangle number
def get_triangle(n)
	return 0.5*n*(n+1)
end