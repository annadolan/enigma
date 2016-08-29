require_relative "rotator_decrypt"

class Decryptor
  def initialize(key, date)
    @key = key
    @date = date

  end

  def read_encrypted_from_file
    open("encrypted.txt") {|f|
    @text = f.read
  }
  @text
  end

  def decrypt_from_file
  #  read_message_from_file
    @rotator_decrypt = RotatorDecrypt.new
    @rotator_decrypt.rotate_calculator(@key, @date)
    @rotator_decrypt.rotated_alphabets_decrypt
    @decrypted = @rotator_decrypt.input_rotate_decrypt(@text)

  end

  def decrypt(input)
    @rotator_decrypt.rotate_calculator(@key, @date)
    @rotator_decrypt.rotated_alphabets
    @rotator_decrypt.input_rotate_decrypt(input, @key, @date)
  end

  def write_decryption_to_file
  #  @rotator.rotate_calculator
    decrypted = File.open("decrypted.txt", "w")
    decrypted.puts @decrypted
    decrypted.close
  end
end

# d = Decryptor.new("55465", "82916")
# d.read_encrypted_from_file
# d.decrypt_from_file
# d.write_decryption_to_file
