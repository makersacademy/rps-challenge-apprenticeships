class Game
  attr_reader :player
  
  def initialize(player)
    @player = player
    @computer_choices = ["Rock", "Paper", "Scissors"]
  end

  def player_choice(choice)
    @player.move(choice)
  end

  def computer_choice 
    @computer_choices.sample
  end

  def decide_winner(player_choice, computer_choice)
    if draw?(player_choice, computer_choice)
      "Draw"
    elsif player_wins?(player_choice, computer_choice)
      "Player"
    else
      "Computer"
    end
  end

  private

  def player_wins?(player_choice, computer_choice)
    true if (
    player_choice == "Scissors" && computer_choice == "Paper" ||
    player_choice == "Rock" && computer_choice == "Scissors" ||
    player_choice == "Paper" && computer_choice == "Rock"
  )
  end

  def draw?(player_choice, computer_choice)
    player_choice == computer_choice
  end
end
