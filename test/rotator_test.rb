require "pry"
require "../lib/rotator"
require "minitest/autorun"
require "minitest/pride"
class RotatorTest < Minitest::Test

  def test_shift_is_four_element_array
    skip
    r = Rotator.new
    assert_equal Array, r.shift_calculator.class
    assert_equal 4, r.shift_calculator.length
  end

  def test_output_length_same_as_input
    r = Rotator.new
    assert_equal 4, r.input_rotate("abcd").length

  end

  def test_output_class_is_string
    r = Rotator.new
    assert_equal String, r.input_rotate("abcd").class
  end
end
