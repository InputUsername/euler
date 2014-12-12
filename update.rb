# script to update list of completed problems

#not_langs = %w(.git files libraries)
languages = %w(c cpp golfscript java javascript lisp lua python ruby)
completed = {}

regex = /.+\/([0-9]+)\..+/

languages.each do |lang|
	files = Dir[lang + "/*"]
	files.each do |file|
		if file =~ regex then
			n = file.match(regex).captures[0]
			if n.length < 3 then
				n = '0' * (3 - n.length) + n
			end
			if not completed[n] then
				completed[n] = []
			end
			completed[n] << lang
		end
	end
end

File.open('COMPLETED', 'w') do |file|
	completed.keys.sort.each do |key|
		file.write(key + ': ' + completed[key].join(', '))
		file.write("\n")
	end
end