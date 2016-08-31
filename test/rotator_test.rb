require "pry"
require "./lib/rotator"
require "minitest/autorun"
require "minitest/pride"
class RotatorTest < Minitest::Test


  def test_output_length_same_as_input
    r = Rotator.new
    assert_equal 4, r.input_rotate("abcd").length

  end

  def test_output_class_is_string
    r = Rotator.new
    assert_equal String, r.input_rotate("abcd").class
  end

  def test_rotate_d_numeric
    r = Rotator.new
    assert_equal Fixnum, r.rotate_calculator.class
  end

  def test_array_three_26_element_array
    r = Rotator.new
    assert_equal Array, r.rotated_alphabets.class
    assert_equal 26, r.rotated_alphabets.length
  end
end
