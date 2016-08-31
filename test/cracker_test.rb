require "pry"
require "./lib/cracker"
require "minitest/autorun"
require "minitest/pride"

class CrackerTest < Minitest::Test
  def test_cracker_exists
    c = Cracker.new("083016")
    assert_instance_of Cracker, c
  end

  def test_crack_method_returns_key_as_integer
    c = Cracker.new("083016")
    assert_equal 18582, c.crack("fnwvm okptyoqb ww zvb qbgnyn..pxb..")
  end

end
