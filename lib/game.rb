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
end
