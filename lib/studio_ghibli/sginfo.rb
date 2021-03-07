require 'pry'
# require_relative './cli'
# require_relative './api'

 class SGInfo

    @@all = [] #use arr to access obj in other classes
     attr_accessor :name, :director, :description, :url, :people, :locations

    def initialize(name, description = " ", director = " ", url = " ", people = " ", locations = " ")
        @name = name
        @description = description
        @director = director
        @url = url
        @people = people
        @locations = locations
        @@all << self
        # binding.pry
    end

    def self.all
        @@all
    end

    def self.find_films(film_name)
      self.all.find {|film| film.name == film_name} 
      # film.name == film_name
      # binding.pry
    end
  end



