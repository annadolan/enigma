require "./lib/key_generator"
class EncryptWithArgs
  attr_reader :input, :key, :date
  def initialize(input = nil, key = nil, date = Date.today)
    @input = input
    @key = key
    @date = date
  end
  def rotate
    offset = (@date.strftime("%m%d%y").to_i ** 2).to_s[-4..-1]
    key = @key.to_s.rjust(5, "0")
    off_a = offset[0].to_i
    off_b = offset[1].to_i
    off_c = offset[2].to_i
    off_d = offset[3].to_i
    key_a = (key[0..1]).to_i
    key_b = (key[1..2]).to_i
    key_c = (key[2..3]).to_i
    key_d = (key[3..4]).to_i
    @rotate_a = key_a + off_a
    @rotate_b = key_b + off_b
    @rotate_c = key_c + off_c
    @rotate_d = key_d + off_d
  end

  def rotated_abc
    rotate
    alphabet = ("a".."z").to_a

    @array_zero = alphabet.rotate(@rotate_a % 26)
    @array_one = alphabet.rotate(@rotate_b % 26)
    @array_two = alphabet.rotate(@rotate_c % 26)
    @array_three = alphabet.rotate(@rotate_d % 26)
  end

  def input_rotate(input)
    rotated_abc
    message = input.chars
    rotated_message = []
    alphabet = ("a".."z").to_a
    message.each_with_index do |letter, index|
      if index % 4 == 0
        rotated_message << letter.tr(alphabet.join, @array_zero.join)
      elsif index % 4 == 1
        rotated_message << letter.tr(alphabet.join, @array_one.join)
      elsif index % 4 == 2
        rotated_message << letter.tr(alphabet.join, @array_two.join)
      elsif index % 4 == 3
        rotated_message << letter.tr(alphabet.join, @array_three.join)
      end
    end
    rotated_message.join
   end
end
