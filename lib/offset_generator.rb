class OffsetGenerator
  attr_reader :offset, :date
  def initialize
    @offset = offset_gen

    # @date = date
  end

  def date_format
    t = Time.new
    month_string = t.mon.to_s
    day_string = t.day.to_s
    year_string = t.year.to_s[2..3]

    date_string = month_string + day_string + year_string

    date_string.to_i
  end

  def offset_gen
    @date = date_format
    date_squared = @date * @date
    date_squared_string = date_squared.to_s

    date_squared_string[-4..-1]
  end

end
