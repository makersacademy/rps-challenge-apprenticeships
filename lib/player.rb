require 'sinatra/base'

class Player

  attr_reader :name , :player_selection
  
  DEFAULT_OPTIONS = ["Rock", "Paper", "Scissors"]
  
  def initialize(name, player_selection = DEFAULT_OPTIONS)
    @name = name
    @player_selection = player_selection
  end

  # partial solution, not completed
  def play_game(choice)
    @player_selection.each do |option|
      if option.include?(choice)
        return "You have selected #{choice}" 
      end 
  end
end 

end 