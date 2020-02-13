require "pry"

class Parse

  def initialize(file)
   @v = []
   File.open(file, "r") do |text|
    text.each{|x| @v << x}
   end
   self.pages 
  end

  def pages
    @page = [] 
    @v.each{|x| @page << x.split.first}
    
    @page.each do |x|
      @page.count(x)
      binding.pry 
    end 
  end 

  def ip_address
    @ip = []
    @v.each{|x| @ip << x}
  end




end 