require "pry"
require "./lib/encryptor"
require "minitest/autorun"
require "minitest/pride"

class EncryptorTest < Minitest::Test

  def test_encryptor_exists
    e = Encryptor.new
    assert_instance_of Encryptor, e
  end
  
  def test_encrypt_returns_different_string_of_same_length_as_input
    e = Encryptor.new

    assert_equal 35, e.encrypt("hello darkness my old friend..end..").length
    assert_equal String, e.encrypt("hello").class
    refute_equal "hello", e.encrypt("hello")
  end

end
