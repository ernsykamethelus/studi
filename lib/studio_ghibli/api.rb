require 'pry'
require 'httparty'
 require_relative './sginfo'
 require_relative './cli'

class API
 def self.get_films(url)
   response = HTTParty.get("https://ghibliapi.herokuapp.com/films/")
   response.each do |hash|
     @@new_film = SGInfo.new(hash["title"], hash["description"], hash["director"], hash["people"], hash["locations"], hash["url"])
   end
 end
end


#ruby lib/studio_ghibli/api.rb

API.get_films("https://ghibliapi.herokuapp.com/films/")
