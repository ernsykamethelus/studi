require 'pry'

 class SGInfo

    @@all = []
     attr_accessor :name, :director, :description, :url, :people, :locations

    def initialize(name, description = " ", director = " ", url = " ", people = " ", locations = " ")
        @name = name
        @description = description
        @director = director
        @url = url
        @people = people
        @locations = locations
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_films(film_name)
      self.all.find {|film| film.name == film_name} 
    end
  end



