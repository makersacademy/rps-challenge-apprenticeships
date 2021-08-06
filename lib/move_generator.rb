class Move_Generator
  attr_accessor :computer_move
  def initialize
    @computer_move = ""
  end
  def generator_move
    @computer_move = ['Rock', 'Paper', 'Scissors'].sample
  end
end