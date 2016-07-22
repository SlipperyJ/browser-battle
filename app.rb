require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'
class Battle < Sinatra::Base

enable :sessions

  before do
    @game = Game.current_game
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:Player1])
    player2 = Player.new(params[:Player2])
    Game.start(player1, player2)
    redirect '/play'

  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    @game.attack(@game.player2)
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
