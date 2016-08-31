require "./lib/key_generator"
require "minitest/autorun"
require "minitest/pride"
class KeyGeneratorTest < Minitest::Test

  def test_five_digit_key_is_generated
    k = KeyGenerator.new
    assert_equal 5, k.key.length
  end

  def test_key_is_numeric
    k = KeyGenerator.new
    assert_equal Fixnum, k.key.to_i.class
  end

  def test_rand_num_between_0_and_99999
   k = KeyGenerator.new
   assert (k.key.to_i >= 0 && k.key.to_i < 100000)
 end
end
