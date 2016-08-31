require "pry"
require "./lib/decryptor"
require "minitest/autorun"
require "minitest/pride"
require_relative "test_helper"

class DecryptorTest < Minitest::Test
  def test_decryptor_exists
    d = Decryptor.new("18582", "083016")
    assert_instance_of Decryptor, d
  end

  def test_decryptor_decrypts_input_based_on_key_and_date
    d = Decryptor.new("18582", "083016")

    assert_equal "hello darkness my old friend..end..", d.decrypt("fnwvm okptyoqb ww zvb qbgnyn..pxb..")
  end

end
