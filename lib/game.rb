class Game

  def initialize(player, computer)
    @player_choice = player
    @CPU_choice = computer
  end

  def compare
    if @player_choice == @CPU_choice
      return "draw"

    elsif (@player_choice == "Rock" && @CPU_choice == "Scissors") || 
          (@player_choice == "Paper" && @CPU_choice == "Rock") ||
          (@player_choice == "Scissors" && @CPU_choice == "Paper")
      return "You Won!"

    else (@CPU_choice == "Rock" && @player_choice == "Scissors") || 
         (@CPU_choice == "Paper" && @player_choice == "Rock") ||
         (@CPU_choice == "Scissors" && @player_choice == "Paper")
      return "You Lose!"
    end

  end

end