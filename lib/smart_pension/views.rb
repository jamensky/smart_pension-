require "pry"

class Parse

  @@y = []

  def initialize(file)
   File.open(file, "r") do |text|
    text.lines.each{|x| @@y << x}
    binding.pry
   end
  end

  def self.all
    @@y
  end

end
