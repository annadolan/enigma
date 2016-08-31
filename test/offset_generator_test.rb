require "./lib/offset_generator"
require "minitest/autorun"
require "minitest/pride"

class OffsetGeneratorTest < Minitest::Test
  def test_offset_is_four_digits
    o = OffsetGenerator.new
    assert_equal 4, o.offset_gen.length
  end

  def test_offset_is_numeric
    o = OffsetGenerator.new
    assert_equal Fixnum, o.offset_gen.to_i.class
  end

  def test_date_uses_correct_year
  o = OffsetGenerator.new
  assert_equal "16", (o.date_format.to_s[-2,2])
  end

end
