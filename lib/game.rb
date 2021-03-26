class Game

  def initialize(player_one_selection, player_two_selection)
    @player_one_selection = player_one_selection
    @player_two_selection = player_two_selection
  end

  def result
    if @player_one_selection == @player_two_selection
      "It's a Draw!"
    elsif (@player_one_selection == "Rock" && @player_two_selection == "Scissors") ||
        (@player_one_selection == "Paper" && @player_two_selection == "Rock") ||
        (@player_one_selection == "Scissors" && @player_two_selection == "Paper") 
      "Player 1 wins"
    else 
      "Player 2 wins"
    end
  end

end