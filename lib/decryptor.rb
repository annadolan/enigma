require_relative "rotator_decrypt"

class Decryptor
  def initialize(key, date)
    @key = key
    @date = date
  #  @offset = (date.to_i ** 2).to_s[-4..-1]
    @rotator_decrypt = RotatorDecrypt.new
    #@input_array = ARGV
  end

  # def read_encrypted_from_file
  #   open(@input_array[0]) {|f|
  #   @text = f.read
  # }
  # @text
  # end

  # def decrypt_from_file
  #   #read_encrypted_from_file
  #
  #   @rotator_decrypt.rotate_calculator(@key, @date)
  #   @rotator_decrypt.rotated_alphabets_decrypt
  #   @decrypted = @rotator_decrypt.input_rotate_decrypt(@text)
  #
  # end

  def decrypt(input)
    @rotator_decrypt.rotate_calculator(@key, @date)
    @rotator_decrypt.rotated_alphabets_decrypt
    @rotator_decrypt.input_rotate_decrypt(input)
  end

  # def write_decryption_to_file
  #   decrypted = File.open(@input_array[1], "w")
  #   decrypted.puts @decrypted
  #   decrypted.close
  # end
end
