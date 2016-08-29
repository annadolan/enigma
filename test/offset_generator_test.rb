require "../lib/offset_generator"
require "minitest/autorun"
require "minitest/pride"

class OffsetGeneratorTest < Minitest::Test
  def test_date_is_correct
    o = OffsetGenerator.new
    assert_equal 82616, o.date_format
  end

  def test_offset_is_four_digits
    o = OffsetGenerator.new
    assert_equal 4, o.offset_gen.length
  end

end
