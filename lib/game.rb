class Game

 attr_reader :player_choice  :commpluter_choice

  OPTIONS = [:rock, :paper, scissor].freeze
  CONDITIONS = {
    rock: {rock: :tie, paper: :lose, scissors: :win},
    paper: {rock: :win, paper: :tie, scissors: :lose},
    scissors: {rock: :lose, paper: :win, scissors: :tie}
  }

  attr_reader

  def player_choice
    @player_choice
  end  
  
  def computer_choice
    @commpluter_choice
  end 

  def play
    CONDITIONS[@player_choice][computer_choice]
  end 
end 
