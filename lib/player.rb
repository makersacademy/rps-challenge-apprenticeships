require_relative 'choice'

class Player 

  attr_reader :name 

  def initialize(name)
    @name = name 
  end 
    
  def choice(player_input = Choice::RANDOM_CHOICE)
    @choice = Choice.new(player_input)
  end 

  def show_choice
    @choice.show
  end 

end 
