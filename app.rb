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

post '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end

get '/cat-naming' do
  '<form class="" action=/named-cat method="post">
    <input type="text" name="name">
    <input type="submit" value="Submit">
  </form>'
end

get '/cat_form' do
  erb :cat_form
end
