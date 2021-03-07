require_relative "studio_ghibli/version"
require_relative "studio_ghibli/cli"
require_relative "studio_ghibli/api"
require_relative "studio_ghibli/sginfo"

module StudioGhibli
  class Error < StandardError; end
  # Your code goes here...
end
#where all the files are loaded and gems without requiring it across the application

require 'bundler'
Bundler.require
