class Move_Generator
  attr_accessor :computer_move
  def initialize
    @computer_move = ""
  end
  def move_generator
    @computer_move = ['Rock', 'Paper', 'Scissors'].sample
  end
end