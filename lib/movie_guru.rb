require 'pry'
require 'rest-client'
require 'json'

require_relative "movie_guru/version"
require_relative "movie_guru/cli"
require_relative "movie_guru/api"
require_relative "movie_guru/movie"

module MovieGuru
  class Error < StandardError; end
  # Your code goes here...
end

