class Computer 

  attr_reader :moves 

  def initialize
    @moves = ["Rock", "Paper", "Scissors"]
  end 

  def computer_move
    moves.sample
  end 

end
