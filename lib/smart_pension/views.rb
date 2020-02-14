require "pry"

class Parse

  def initialize(file)
   @page_and_ip = []
   File.open(file, "r") do |line|
    line.each{|x| @page_and_ip << x}
   end
  end

  def page_views
    @pages = []
    @page_and_ip.each{|x| @pages << x.split.first}

    hash = Hash.new
    @pages.each do |x|
      hash[x] = @pages.count(x)
    end
    puts hash.sort_by{|page, views| views}.reverse
  end

  def unique_views
    @ip = []
    @page_and_ip.each{|x| @ip << x.split.last}
    binding.pry
  end




end
