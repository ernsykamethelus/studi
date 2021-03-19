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
       welcome
   end
       
   def user_input(name)
      gets.strip 
   end
       
   def welcome 
      name = gets.strip 
       puts "Hi! #{name}, Let's go on an adventure, shall we?".cyan.bold.blue
       film_input_prompt
   end

      def case_input(input)
           case input
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
               sleep(1.5)
               input = film_input_prompt
           when 2
            system("clear")
           goodbye
           exit
       end
   end

   def prompt
       prompt = TTY::Prompt.new
   end

   def film_input_prompt
      input = prompt.select("Search by Title") do |menu|
         menu.default 1
               menu.choice 'List all the films', 1
               menu.choice 'Exit.', 2
      end
      case_input(input)
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

   def exit
      puts "\nHave a good day!"
   end
end


