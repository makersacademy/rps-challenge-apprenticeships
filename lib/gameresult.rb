require_relative 'player'

class Gameresult
  
  attr_reader :result
  
  def calculate(player1, player2)
    
    @p1 = player1.option
    @p2 = player2.option
  
    @conditions = { 'rock' => 'scissors', 'paper' => 'rock', 'scissors' => 'paper' }
   
    if @conditions[@p1] == @p2
      @result = player1.name
      elsif @p1 == @p2
        @result = 'Its a draw!'
      else
        @result = player2.name 
    end
  end
  
end
