require "pry"
require "./lib/rotator"

class Encryptor
  attr_accessor :key, :date
  def initialize
    @rotator = Rotator.new
    @key = @rotator.key
    @date = @rotator.date
  end

  def encrypt(input)
    @rotator.rotate_calculator
    @rotator.rotated_alphabets
    @rotator.input_rotate(input)
  end
end
