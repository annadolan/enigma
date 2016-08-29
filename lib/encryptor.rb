require "pry"
require_relative "rotator"

class Encryptor
  def initialize
    @rotator = Rotator.new
    #@text = ""
  end

  def read_message_from_file
    open("message.txt") {|f|
    @text = f.read
  }
  @text
  end

  def encrypt_from_file
    read_message_from_file
  #  read_message_from_file
    #@rotator = Rotator.new
    @rotator.rotate_calculator
    @rotator.rotated_alphabets
    @encrypted = @rotator.input_rotate(@text)
    #puts "Key is #{@rotator.key}, date is #{@rotator.date}"
  end

  def encrypt(input)
    @rotator.rotate_calculator
    @rotator.rotated_alphabets
    @rotator.input_rotate(input)
  end

  def write_encryption_to_file
  #  @rotator.rotate_calculator
    encrypted = File.open("encrypted.txt", "w")
    encrypted.puts @encrypted
    encrypted.close
    puts @rotator.key
    puts @rotator.date
  end
end

 e = Encryptor.new
# e.read_message_from_file
 e.encrypt_from_file
 e.write_encryption_to_file
