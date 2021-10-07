class Game
  attr_reader :player
  
  def initialize(player)
    @player = player
    @computer_choices = ["Rock", "Paper", "Scissors"]
  end

  def player_choice(choice)
    @player.set_choice(choice)
  end

  def computer_choice 
    @computer_choices.sample
  end

  def decide_winner(player_choice, computer_choice)
    result = ""
    if player_choice == computer_choice
      result = "Draw"
    elsif player_choice == "Scissors" && computer_choice == "Paper"
      result = "Player"
    end
    result
  end
end
