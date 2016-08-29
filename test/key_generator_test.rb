require "../lib/key_generator"
require "minitest/autorun"
require "minitest/pride"
class KeyGeneratorTest < Minitest::Test

  def test_five_digit_key_is_generated
    k = KeyGenerator.new
    assert_equal 5, k.key.length
  end
end
