class Move_Generator
  
  attr_accessor :NUM

  def computer_move 
    NUM = rand(1..9)
    @move = 'Rock' if NUM <= 3
    @move = 'Paper' if NUM.between?(4,6)
    @move = 'Scissor' if NUM.between?(7,9)
    return @move
  end

end