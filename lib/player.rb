require './lib/computer_choice'

class Player
  
  attr_reader :name, :choice

  def initialize(name = 'Computer', choice = ComputerChoice.new.choice)
    @name = name
    @choice = choice
  end
end
