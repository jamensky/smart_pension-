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

    ranked_pages = Hash.new
    @pages.each{|x| ranked_pages[x] = @pages.count(x)}
    puts ranked_pages.sort_by{|page, views| views}.reverse
  end

  def unique_views
    @ip = []
    @page_and_ip.each{|x| @ip << x.split.last}

    @page_and_ip.each do|x|
      x.split
      @page_and_ip.each do |y|

     
     
    binding.pry
  end




end
