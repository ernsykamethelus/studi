 require 'pry'
#  require 'httparty'
 require 'net/http' 
  require_relative './sginfo'
  require_relative './cli'
#  require 'awesome_print'

 class API
    URL = "https://ghibliapi.herokuapp.com/films/"
    attr_accessor :url
    
    def self.get_films(url)
        @url = url
        uri = URI.parse(@url)
        resp = Net::HTTP.get(uri)
        binding.pry
        films_info = JSON.parse(resp)
        films_info.each do |film|
            SGInfo.new(film)
        #  binding.pry
        # loc_array
    end
 end
end
    

#ruby lib/studio_ghibli/api.rb

#   API.get_films('https://ghibliapi.herokuapp.com/films/')
#   puts