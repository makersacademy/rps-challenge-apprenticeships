require_relative 'player'

class Game

  def initialize(player_one, player_two)
    @player_one_name = player_one.name
    @player_two_name = player_two.name

    @player_one_selection = player_one.selection
    @player_two_selection = player_two.selection
  end

  def result
    if @player_one_selection == @player_two_selection
      "It's a Draw!"
    elsif (@player_one_selection == "Rock" && @player_two_selection == "Scissors") ||
        (@player_one_selection == "Paper" && @player_two_selection == "Rock") ||
        (@player_one_selection == "Scissors" && @player_two_selection == "Paper") 
      "#{@player_one_name} wins"
    else 
      "#{@player_two_name} wins"
    end
  end

end