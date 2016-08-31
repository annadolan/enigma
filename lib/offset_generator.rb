require "pry"
require "date"
class OffsetGenerator
  attr_reader :offset, :date
  def initialize
    @date = Date.today.strftime("%m%d%y").to_i
    @offset = offset_gen
  end

  def offset_gen
    #date_format
    date_squared = @date * @date
    date_squared_string = date_squared.to_s

    date_squared_string[-4..-1]
  end

end

#o = OffsetGenerator.new
#puts o.date_format
#puts o.offset_gen
