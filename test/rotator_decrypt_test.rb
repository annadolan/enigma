require "pry"
require "./lib/rotator_decrypt.rb"
require "minitest/autorun"
require "minitest/pride"
require_relative "test_helper"

class RotatorDecryptTest < Minitest::Test
  def test_rotate_calculator_works
    rd = RotatorDecrypt.new
    assert_equal 50, rd.rotate_calculator("12345", "61815")
  end

  def test_array_three_26_element_array
    rd = RotatorDecrypt.new
    rd.rotate_calculator("12345", "61815")
    assert_equal Array, rd.rotated_alphabets_decrypt.class
    assert_equal 26, rd.rotated_alphabets_decrypt.length
  end

  def test_rotator_decrypt_rotates_encrypted_message
    rd = RotatorDecrypt.new
    rd.rotate_calculator("63529", "82816")
    assert_equal "hellomynameisannablaghblaghblagh", rd.input_rotate_decrypt("bvquiddwudjrmrswusqjayguuxmkfrlq")
  end


end
