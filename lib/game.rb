class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @winner = @player1
    @choices = ["Scissors", "Paper", "Rock"]
  end

  attr_reader :player1, :player2, :winner

  def play(attack1, attack2)
    @player1.action(attack1)
    @player2.action(attack2)
    
    index = @choices.index(attack1)
    winning_choice = @choices[index - 1]

    if attack1 == attack2
      @winner = "Draw"
    elsif attack2 == winning_choice
      @winner = @player2
    end
  end

end
