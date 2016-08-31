require "pry"
require "./lib/cracker"
read_from = ARGV[0]
write_to = ARGV[1]
date = ARGV[2]

c = Cracker.new(date)


input = File.read(read_from)


key_i = c.crack(input.chomp)



key = key_i.to_s.rjust(5, "0")

d = Decryptor.new(key, date)

cracked_text = d.decrypt(input)



File.write(write_to, cracked_text)


puts "Created #{write_to} with the cracked key #{key} and date #{date}"
