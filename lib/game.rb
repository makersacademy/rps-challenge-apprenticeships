class Game
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def play
    raise 'Empty player 2' if player2.nil?
    raise 'Empty player 1' if player1.nil?
    raise 'Empty choice player 2' if player2.choice.nil?
    raise 'Empty choice player 1' if player1.choice.nil?
    "draw" if player1.choice == player2.choice
  end
end