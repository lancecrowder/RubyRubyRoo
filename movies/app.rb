require 'sinatra'
require '../movies/lib/movie'

get('/movies') do
  @movies = []
  @movies[0] = Movie.new
  @movies[0].title = "Jaws"
  @movies[0].director = "Steven Spielberg"
  @movies[0].year = "1975"
  @movies[1] = Movie.new
  @movies[1].title = "Alien"
  @movies[1].director = "Ridley Scott"
  @movies[1].year = "1979"
  @movies[2] = Movie.new
  @movies[2].title = "Terminator"
  @movies[2].director = "James Cameron"
  @movies[2].year = "1984"
  erb :index
end

get("/movies/new") do
  erb :new
end