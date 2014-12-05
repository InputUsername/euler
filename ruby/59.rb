f = File.read('..\files\cipher-59.txt')
encrypted = f.split(',').map {|c| c.to_i.chr }.join
decrypted = {}

