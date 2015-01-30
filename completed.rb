# script to update list of completed problems

completed_problems = {}

regex = /.+\/[A-Za-z_]*([0-9]+)\..+/

file_whitelist = %w(.git .gitignore files libraries COMPLETED FINISHED README TODO completed.rb)

language_directories = Dir['*']
language_directories -= file_whitelist

language_directories.each do |lang|
	files = Dir[lang + "/*"]
	files.each do |file|
		if file =~ regex then
			problem_num = file.match(regex).captures[0]
			if problem_num.length < 3 then
				problem_num = '0' * (3 - problem_num.length) + problem_num
			end
			completed_problems[problem_num] ||= [] # if doesn't exist yet, create an array, else do nothing
			completed_problems[problem_num].uniq!
			completed_problems[problem_num] << lang
		end
	end
end

File.open('COMPLETED', 'w') do |file|
	completed_problems.keys.sort.each do |key|
		file.write(key + ': ' + completed_problems[key].sort.join(', '))
		file.write("\n")
	end
	file.write("\nTotal: " + completed_problems.size.to_s + " challenges in " + language_directories.size.to_s + " languages.\n")
end
