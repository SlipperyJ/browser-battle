require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  before do
    @game = Game.show_game
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:Name1])
    player2 = Player.new(params[:Name2])
    Game.start(player1, player2)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    @game.attack
    erb :attack
  end

  post '/switch_turn' do
    @game.switch_turn if !@game.gameover
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
