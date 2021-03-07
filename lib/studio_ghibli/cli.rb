#begin building your welcome method and the first method thats going to display content
require 'pry'
require_relative './sginfo'
require_relative './api'

class CLI

   def start
       puts "Hello! Welcome to Studio Ghibli, the world of magick!".cyan.red.bold
       sleep(0.5)
       puts "The Studio Ghibli catalogs the people, places, and things found in the worlds of Ghibli. ".cyan.red.bold
       puts "***********************".red
       sleep(1.0)
       puts "Please enter you name:".cyan.red.bold
       welcome(user_input)
      #  input = film_input_prompt
   end
       
   def user_input
       gets.strip || get.strip.to_i
   end
       
   def welcome(name)
       puts "Hi! #{name}, Let's go on an adventure, shall we?".cyan.bold.blue
       sleep(0.5)
           case film_input_prompt
           when 1
           film_input = list_films
           chosen_film = SGInfo.find_films(film_input)
           sleep(1.5)
           puts "Name:"
           puts "#{chosen_film.name}"
           sleep(1.5)
           puts "Director:"
           puts "#{chosen_film.director}"
           sleep(1.5)
           puts "Description:"
           puts "#{chosen_film.description}"
           sleep(1.5)
           puts "Locations:"
           puts "#{chosen_film.locations}"
           sleep(1.5)
           puts "People:"
           puts "#{chosen_film.people}"
           sleep(1.5)
           puts "Website:"
           puts "#{chosen_film.url}"
           puts " "
           sleep(1.5)
           puts "Make another selection or choose to exit:"
           input = film_input_prompt
           when 2
            input = film_input_prompt
            system("clear")
           goodbye
           # sleep(2.5)
       end
           ending
   end

   def prompt
       prompt = TTY::Prompt.new
   end

   def film_input_prompt
       prompt.select("Search by Title", cycle: true ) do |menu|
               menu.choice"List all the films", 1
               menu.choice "Exit.", 2
   end
end

   def list_films
      films = SGInfo.all
      film_name = films.collect do |film| 
       film.name
       end
      prompt.select("Please select from the these titles:", film_name)
   end

   def goodbye
      puts "More Adventure awaits when you decide to come back!".cyan.blue.bold
   end

   def not_working
      puts "I am sorry, will you please try again.".cyan.blue.bold
   end

   def ending
      puts "\nHave a good day!"
   end
end

