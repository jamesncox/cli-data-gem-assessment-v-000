class TopGames::Scrape 
  
    attr_accessor :name, :release_date, :summary
  
   def self.scrape_games
     
     games = []
     games << self.scrape_site
     
     
    #     game_1 = self.new 
    # game_1.name = "Chrono Trigger"
    # game_1.developer = "Square"
    # game_1.release_date = "1995"
    # game_1.url = "http://www.ign.com/lists/top-100-rpgs/1/1/3"
    # game_1.summary = "blah blah blah"
    
    # game_2 = self.new 
    # game_2.name = "Final Fantasy VI"
    # game_2.developer = "Square"
    # game_2.release_date = "1994"
    # game_2.url = "http://www.ign.com/lists/top-100-rpgs/1/1/3"
    # game_2.summary = "blah blah blah"
    
    # game_3 = self.new 
    # game_3.name = "Baldur's Gate II: Shadows of Amn"
    # game_3.developer = "Bio Wares"
    # game_3.release_date = "2000"
    # game_3.url = "http://www.ign.com/lists/top-100-rpgs/1/1/3"
    # game_3.summary = "blah blah blah"
    
    games 
  end 
  
  def self.scrape_games
    doc = Nokogiri::HTML(open("https://www.pcgamer.com/best-rpgs-of-all-time/"))
    name_1 = doc.search("h3#kingdom-come-deliverance").text
    release_date_1 = doc.search('p')[7].text
    
  
   binding.pry
 end 

def self.scrape_summary
  
  summary_1 = doc.search('p')[8].text #kingdom come summary 
  
end 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end 