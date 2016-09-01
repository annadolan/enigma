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

  def test_encrypts_with_input_key_and_date
    e = Enigma.new
    assert_equal "cfykj qzmladnt lt bky sqdfac..rmy..", e.encrypt("hello darkness my old friend..end..", "12345", Date.today)
  end

  def test_encrypts_with_input_only
    e = Enigma.new
    assert_equal 35, e.encrypt("hello darkness my old friend..end..").length
    refute_equal "hello darkness my old friend..end..", e.encrypt("hello darkness my old friend..end..")
  end

  def test_decrypts_with_input_key_and_date
    e = Enigma.new
    assert_equal "hello darkness my old friend..end..", e.decrypt("cfykj qzmladnt lt bky sqdfac..rmy..", "12345", Date.today)
  end

  def test_decrypts_with_input_and_key_only
    e = Enigma.new
    assert_equal "hello darkness my old friend..end..", e.decrypt("cfykj qzmladnt lt bky sqdfac..rmy..", "12345")
  end

  def test_cracks_with_input_and_date
    e = Enigma.new
    assert_equal "hello darkness my old friend..end..", e.crack("cfykj qzmladnt lt bky sqdfac..rmy..", Date.today)
  end

  def test_cracks_with_input_only
    e = Enigma.new
    assert_equal "hello darkness my old friend..end..", e.crack("cfykj qzmladnt lt bky sqdfac..rmy..")
  end
end
