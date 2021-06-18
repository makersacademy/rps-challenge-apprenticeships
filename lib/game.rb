class Game

  attr_reader :player_choice, :comp_choice

  def initialize(player_choice, comp_choice)
    @player_choice = player_choice
    @comp_choice = comp_choice
  end

  def result
    case
    when 
      (@player_choice == "Rock" && @comp_choice == "Scissors") ||
      (@player_choice == "Paper" && @comp_choice == "Rock") ||
      (@player_choice == "Scissors" && @comp_choice == "Paper")
      return "Player wins"
    when 
      (@player_choice == "Scissors" && @comp_choice == "Rock") ||
      (@player_choice == "Rock" && @comp_choice == "Paper") ||
      (@player_choice == "Paper" && @comp_choice == "Scissors")
      return "Computer wins"
    else
      return "It's a draw"
    end
  end

end
