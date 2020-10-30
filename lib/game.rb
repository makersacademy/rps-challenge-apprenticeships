class Game
  attr_reader :players

  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def check_winner(p1move, p2move)
    if p1move == p2move
      return "It's a draw!"
    elsif (p1move == 'rock' && p2move == 'paper') || (p1move == 'paper' && p2move == 'scissors')
      return 'Player 2 wins!'
    elsif (p1move == 'scissors' && p2move == 'rock')
      return 'Player 2 wins!'
    else
      return 'Player 1 wins!'
    end
  end

end