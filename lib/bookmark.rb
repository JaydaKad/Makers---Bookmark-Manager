require 'pg'

class Bookmark
  attr_reader :list

  def initialize
    @list = []
  end

  def all
    @list = ['bbc', 'makersacademy']
  end

  puts "*************"
  begin 
    con = PG.connect :dbname => 'bookmark_manager', :user => 'linna@paddle.com'
    
    rs = con.exec "SELECT * FROM bookmarks"

    rs.each do |row|
      item = "%s" % [row['url']]
      @list.push(item)
    end
    puts "*************"
  end

  puts @list
end
