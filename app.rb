require 'sinatra'

get '/' do
  "Hello World"
end

get '/hot-dogs' do
  "You wanna buy a hot dog?"
end

get '/ice-cream' do
  "Too hot.. Need Ice Cream?"
end

get '/cat' do
  erb :index
end
