require "pry"
require "./lib/enigma"
require "minitest/autorun"
require "minitest/pride"
require_relative "test_helper"

class EnigmaTest < Minitest::Test
  def test_enigma_exists
    e = Enigma.new
    assert_instance_of Enigma, e
  end

  def test_encrypts_with_input_key_and_date_returns_different_string_of_same_length
    e = Enigma.new
    assert_equal 35, e.encrypt("hello darkness my old friend..end..", "12345", Date.today).length
    assert_equal String, e.encrypt("hello darkness my old friend..end..", "12345", Date.today).class
    refute_equal "hello darkness my old friend..end..", e.encrypt("hello darkness my old friend..end..", "12345", Date.today)
  end

  def test_encrypts_with_input_only_returns_different_string_of_same_length
    e = Enigma.new
    assert_equal 35, e.encrypt("hello darkness my old friend..end..").length
    refute_equal "hello darkness my old friend..end..", e.encrypt("hello darkness my old friend..end..")
  end

  def test_decrypts_with_input_key_and_date
    e = Enigma.new
    assert_equal "hello darkness my old friend..end..", e.decrypt(e.encrypt("hello darkness my old friend..end..", "12345", Date.today), "12345", Date.today)
  end

  def test_decrypts_with_input_and_key_only
    e = Enigma.new
    assert_equal "hello darkness my old friend..end..", e.decrypt(e.encrypt("hello darkness my old friend..end..", "12345", Date.today), "12345")
  end

  def test_cracks_with_input_and_date_returns_string_of_same_length_ending_in_end
    e = Enigma.new
    assert_equal 35, e.crack(e.encrypt("hello darkness my old friend..end..", "12345", Date.today)).length
    assert_equal "..end..", e.crack(e.encrypt("hello darkness my old friend..end..", "12345", Date.today), Date.today)[-7..-1]
  end

  def test_crack_with_input_only_returns_string_of_same_length_ending_in_end
    e = Enigma.new
    assert_equal 35, e.crack(e.encrypt("hello darkness my old friend..end..", "12345", Date.today)).length
    assert_equal "..end..", e.crack(e.encrypt("hello darkness my old friend..end..", "12345", Date.today))[-7..-1]
  end
end
