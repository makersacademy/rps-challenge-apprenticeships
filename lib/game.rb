class Game
attr_accessor :weapons
attr_accessor :computer_weapon
attr_accessor :player_weapon

  # #This method sets out the logic for choosing computer's weapon
  # def initialize
  #
  # end
  def initialize(player_weapon)
    @player_weapon = player_weapon
  end

  def choose_weapon
    @computer_weapon = ["rock", "paper", "scissors"].sample
  end

  #This method sets out the logic for selecting the winner
  def choose_winner
    p "I'm here"
    p @computer_weapon
    p @player_weapon
    if @computer_weapon == @player_weapon
      p "It's a tie!"
      "It's a tie!"
    elsif @player_weapon == "rock" && @computer_weapon == "paper"
      p "Paper covers rock. You lose"
      "Paper covers rock. You lose"
    elsif @player_weapon == "rock" && @computer_weapon == "scissors"
      p "Rock smashes scissors. You win!"
      "Rock smashes scissors. You win!"
    elsif @player_weapon == "paper" && @computer_weapon == "rock"
      p "Paper covers rock. You win!"
      "Paper covers rock. You win!"
    elsif @player_weapon == "paper" && @computer_weapon == "scissors"
      p "Scissors cut paper. You lose"
      "Scissors cut paper. You lose"
    elsif @player_weapon == "scissors" && @computer_weapon == "paper"
      p "Scissors cut paper. You win!"
      "Scissors cut paper. You win!"
    elsif @player_weapon == "scissors" && @computer_weapon == "rock"
      p "Rock smashes scissors. You lose"
      "Rock smashes scissors. You lose"
    end
  end
end
