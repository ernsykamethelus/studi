#begin building your welcome method and the first method thats going to display content
#  require 'pry'
 require_relative './sginfo'
 require_relative './api'
require 'colorize'

 class CLI
    # @@grn="\e[1;31m"
    # @@white="\e[0m"

    def start
        puts "Hello! Welcome to Studio Ghibli, the world of magick!".cyan.on_blue.bold
        sleep(1.5)
        puts "The Studio Ghibli catalogs the people, places, and things found in the worlds of Ghibli. ".cyan.on_blue.bold
        sleep(1.5)
        API.get_films
        welcome(user_input)
    end

    def user_input
        gets.strip 
    end

    def welcome(name)
        puts "#{name}, which movie would you like to see today?".cyan.on_blue.bold
        puts "Input 'yes' to see list, 'exit' to leave.".cyan.on_blue.bold
        menu 
    end

    #printout list 
    def film_list
        SGInfo.all.each.with_index(1) do |film, i|
            puts ""
            puts ""
            puts "#{i}. #{film.name}"
        end
        film.selection
    end

 def goodbye
    puts "More Adventure awaits when you decide to come back!".cyan.on_blue.bold
 end

 def not_working
    puts "I am sorry, will you please try again.".cyan.on_blue.bold
    menu
 end

 def film_data
    puts "Select desired film for more information".cyan.on_blue.bold
    selection = user_input
    film = SGInfo.find.starship(selection)
    puts ""
    puts ""
    puts "***********************************************"
    puts "Title: #{film.name}"
    puts "Description: #{film.description}"
    puts "Director: #{film.director}"
    puts "People: #{film.people}"
    puts "Locations: #{film.locations}"
    puts "***********************************************"
    menu
 end

 def prompt
    prompt = TTY::Prompt.new
 end

 def menu
    selection = user_input
    if selection == 'yes'
        film_list
        menu
    elsif selection == "exit"
        goodbye
    else
        not_working
    end
 end
end



# def goodbye
#     puts "\nHave a good day!"
# end
# end

# ruby lib/studio_ghibli/cli.rb
# puts 

# \u{2601}\u{2601}\u{2601}\u{2601}\u{2601}\u{2601}\u{2601}\u{2601}\u{2601}\u{2601}\u{2601}\u{2601}