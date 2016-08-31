require "./lib/decryptor"
key = ARGV[2]
date = ARGV[3]
read_from = ARGV[0]
write_to = ARGV[1]

d = Decryptor.new(key, date)


  input = File.read(read_from)

  decrypted_text =  d.decrypt(input)

  File.write(write_to, decrypted_text)

puts "Created #{write_to} with key #{key} and date #{date}"
