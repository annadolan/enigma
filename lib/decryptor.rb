require "./lib/rotator_decrypt"

class Decryptor
  def initialize(key, date)
    @key = key
    @date = date
    @rotator_decrypt = RotatorDecrypt.new
  end

  def decrypt(input)
    @rotator_decrypt.rotate_calculator(@key, @date)
    @rotator_decrypt.rotated_alphabets_decrypt
    @rotator_decrypt.input_rotate_decrypt(input)
  end
end
