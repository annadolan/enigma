require "pry"
require "../lib/rotator_decrypt.rb"
require "minitest/autorun"
require "minitest/pride"

class RotatorDecryptTest < Minitest::Test
  def test_rotate_calculator_works
    rd = RotatorDecrypt.new
    rd.rotate_calculator("12345", "61815")
    assert_equal 16, rd.rotate_a
  end

end
# 4225
# 16
# 25
# 36
# 50
