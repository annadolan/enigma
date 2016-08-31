require "./lib/encryptor"
read_from = ARGV[0]
write_to = ARGV[1]

e = Encryptor.new

key = e.key
date = e.date

  input = File.read(read_from)

  encrypted_text =  e.encrypt(input)

  File.write(write_to, encrypted_text)

puts "Created #{write_to} with the key #{key} and date #{date}"
