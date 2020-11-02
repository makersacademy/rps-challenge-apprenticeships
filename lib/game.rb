class Game

  def initialize
    
  end

  def random_choice
    ["rock", "paper", "scissors"].sample
  end

  def winner(choice, computer_choice)
    if choice == computer_choice
      return "its a draw!!!"
    elsif choice == "Rock" && computer_choice == "scissors"
      return "player" 
    elsif choice == "scissors" && computer_choice == "paper"
      return "player"
    elsif choice == "paper" && computer_choice == "Rock"
      return "player"
    else
      return "computer"
    end
  end 

end
