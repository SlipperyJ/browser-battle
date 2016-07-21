class Game
  attr_reader :player1, :player2

  def self.start(player1, player2)
    @game_session = Game.new(player1, player2)
  end

  def self.show_game
    @game_session
  end

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @turn = player1
  end

  def name_of(player)
    player.name
  end

   def attack
    current_opponent.take_damage
  end

  def current_player
    turn
  end

  def current_opponent
    if current_player == player1
      opponent = player2
    else
      opponent = player1
    end
    opponent
  end

  def switch_turn
    if turn == player1
      @turn = player2
    else
      @turn = player1
    end
  end

  def gameover
    !current_opponent.alive?
  end

  private

  attr_reader :turn




end
