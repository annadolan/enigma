require "./lib/offset_generator"
require "minitest/autorun"
require "minitest/pride"
require_relative "test_helper"

class OffsetGeneratorTest < Minitest::Test
  def test_offset_is_four_digits
    o = OffsetGenerator.new
    assert_equal 4, o.offset_gen.length
  end

  def test_offset_is_numeric
    o = OffsetGenerator.new
    assert_equal Fixnum, o.offset_gen.to_i.class
  end


end
