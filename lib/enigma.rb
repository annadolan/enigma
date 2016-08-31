require_relative "crack"
require_relative "encrypt"
require_relative "decrypt"

class Enigma
  attr_reader :encrypt, :decrypt, :crack

  def initialize
    @key = key
    @date = date
    @e = Encryptor.new
    @d = Decryptor.new(key, date)
    @c = Cracker.new(date)
  end

  def encrypt(*argument)
    input = argument[0]
    key = argument[1]
    date = argument[2]

    @e.encrypt(input)
  end

  def decrypt(*argument)

  end

  def crack(output, )

  end


end

e = Enigma.new
e.decrypt("output", "12345", Date.today)
