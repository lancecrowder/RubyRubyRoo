require 'sinatra'
get("/hello") do
  "<h1>Hello Web!!!</h1>"
end

get('/salute') do
  "<h1>Orale Mundo</h1>"
end

get('/namaste') do
  "<h1>Namaste in Bed</h1>"
end