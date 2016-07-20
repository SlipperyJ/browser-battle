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

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb :index
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end
