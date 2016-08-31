require "./lib/decryptor"#.#!/usr/bin/env ruby -wKU

class Cracker
  def initialize(date)
    @date = date
  end
  def crack(message)
    99999.times do |i|
      d = Decryptor.new(i.to_s.rjust(5, "0"), @date)
      crackalack = d.decrypt(message)
      return i if crackalack[-7..-1] == "..end.."
    end
  end
end
