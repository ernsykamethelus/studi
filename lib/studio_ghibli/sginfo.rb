require_relative './cli'
require_relative './api'


 class SGInfo
    @@all = [] #use arr to access obj in other classes
     attr_accessor :title, :description, :director, :people, :locations

  #   def initialize(title, description, director, people, locations)
  #       @title = title
  #       @description = description
  #       @director = director
  #       @people = people
  #       @locations = locations
  #       @@all << self
  #       save
  #   end
  # end
    # massprogramming and metaprogramming to send a web request to an API and returns particular data to the program.
#    def initialize(film_hash)
#         film_hash.each {|key, value| self.send(("#{key}="), value)}
#      save
#   end
# end
def initialize(attributes)
  attributes.each do |key, value| 
    self.class.attr_accessor(key)
    self.send(("#{key}="), value)
  end
end
end 

def save
  @@all<< self
end

def self.all
    @@all
  end

  def self.find_films(film_name)
    self.all.find do |film|
      film.name == film_name
      # binding.pry
  end
end

