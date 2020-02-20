require "pry"

class Parse

  def initialize(file)
   @pages_and_ip = []
   @pages = []
   @ip = []

   File.open(file, "r") do |line|
    line.each do |x| 
      @pages_and_ip << x 
      @pages << x.split.first
      @ip << x.split.last 
    end 
   end
  end


  def page_views
    ranked_pages = Hash.new
    @pages.each{|x| ranked_pages[x] = @pages.count(x)}
    puts ranked_pages.sort_by{|page, views| views}.reverse
  end 


  def unique_views
    hash = {} 
    @pages.each{|pg| hash[pg] = []}

    @pages_and_ip.each do |x|
      if hash.include?(x.split.first) 
        if !hash[x.split.first].include?(x.split.last)
          hash[x.split.first] << x.split.last
        end
      end 
    end   
    
    ranked_pages = {}
    hash.each do |x, y|
      ranked_pages[x] = y.length 
    end 
    puts ranked_pages.sort_by{|pg, ip| ip }.reverse
  end
end




