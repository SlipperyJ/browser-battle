require_relative 'player'

class Game

  attr_reader :players

  def self.start(player1, player2)
    @newgame = Game.new(player1, player2)
  end

  def self.current_game
    @newgame
  end

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = player1
  end

  def player1
    @players[0]
  end

  def player2
    @players[1]
  end

  def attack(player)
    player.hit
    switch_player
  end

  def current_player
    @current_player
  end

  def switch_player
    @current_player = @players[@players.index(@current_player)-1]
  end
end
