require "./lib/cracker"
require "./lib/rotator_decrypt"
require "./lib/key_generator"
require "./lib/encrypt_with_args"

class Enigma
  attr_reader :encrypt, :decrypt, :crack, :key, :date

  def initialize
    @key = key
    @date = date

  end

  def encrypt(*argument)
     if argument.count == 1
       input = argument[0]
       key = KeyGenerator.new.key
       date = Date.today
       e = EncryptWithArgs.new(input)
       e.input_rotate(input)
     else
      input = argument[0]
      key = argument[1]
      date = argument[2]
      e = EncryptWithArgs.new(input, key, date)

      e.input_rotate(input)
     end
  end

    def decrypt(*argument)
      if argument.count == 2
        date = Date.today.strftime("%m%d%y")
      else
        date = argument[2].strftime("%m%d%y")
      end
      input = argument[0]
      key = argument[1]

      rd = RotatorDecrypt.new
      rd.rotate_calculator(key, date)
      rd.input_rotate_decrypt(input)
    end

  #
    def crack(*argument)
      if argument.count == 2
        date = argument[1].strftime("%m%d%y")
      else

        date = Date.today.strftime("%m%d%y")
      end
      input = argument[0]

      c = Cracker.new(date)
      key_i = c.crack(input)
      key = key_i.to_s.rjust(5, "0")
      d = Decryptor.new(key, date)

      cracked_text = d.decrypt(input)
    end
end



puts e.crack("cfykj qzmladnt lt bky sqdfac..rmy..", Date.today)
