require "pry"
require_relative "rotator"

class Encryptor
  attr_reader :key, :date
  def initialize
    # @key = key
    # @date = date
    @rotator = Rotator.new
    #@input_array = ARGV
    @key = @rotator.key
    @date = @rotator.date

  end

  # def read_message_from_file
  #   open(@input_array[0]) {|f|
  #   @text = f.read
  # }
  # @text
  # end

  # def encrypt_from_file
  #   read_message_from_file
  #   @rotator.rotate_calculator
  #   @rotator.rotated_alphabets
  #   @encrypted = @rotator.input_rotate(@text)
  #
  # end

  def encrypt(input)

    @rotator.rotate_calculator
    @rotator.rotated_alphabets
    @rotator.input_rotate(input)

  end

  # def write_encryption_to_file
  #   encrypted = File.open(@input_array[1], "w")
  #   encrypted.puts @encrypted
  #   encrypted.close
  #   puts @rotator.key
  #   puts @rotator.date
  # end
end

  #e = Encryptor.new
  # e.read_message_from_file
   #e.encrypt_from_file
  #   e.write_encryption_to_file
  # puts @key
  # puts @date
