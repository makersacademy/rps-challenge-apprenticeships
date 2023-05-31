require_relative 'player'

class Gameresult
  CONDITIONS = { 'rock' => 'scissors', 'paper' => 'rock', 'scissors' => 'paper' }
  attr_reader :result
  
  def initialize
    reset
  end

  def calculate(player1, player2)
    if player1.option == player2.option 
      @result = 'Its a draw!' 
    elsif CONDITIONS[player1.option] == player2.option
      @result = player1.name
    else
      @result = player2.name
    end

  end
  
  def reset 
    @result = nil
  end
      
end
