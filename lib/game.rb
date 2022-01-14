class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @winner = nil
  end

  attr_reader :player1, :player2, :winner

  def play(attack1, attack2)
    @player1.action(attack1)
    @player2.action(attack2)
    if attack1 == attack2
      @winner = "Draw"
    elsif (attack1 == "Rock" && attack2 == "Scissors") || (attack1 == "Paper" && attack2 == "Rock") || (attack1 == "Scissors" && attack2 == "Paper")
      @winner = @player1
    else
      @winner = @player2
    end
  end

end
