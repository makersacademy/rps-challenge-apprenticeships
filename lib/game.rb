class Game
  def initialize
    @choices = ["rock", "paper", "scissors"]
  end
  
  def move(choice)
    choice = @choices.index(choice)
    computer_choice = rand(3)

    return "its a draw" if choice == computer_choice
    (choice + 1) % 3 == computer_choice ? "Computer wins!" : "You win!"
  end
end
