module GameLogic
  def self.player1_wins?(player_choice, computer_choice)
    true if (
    player_choice == "Scissors" && computer_choice == "Paper" ||
    player_choice == "Rock" && computer_choice == "Scissors" ||
    player_choice == "Paper" && computer_choice == "Rock"
  )
  end
  
  def self.draw?(player_choice, computer_choice)
    player_choice == computer_choice
  end  
end
