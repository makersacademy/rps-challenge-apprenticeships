class Outcome
#game logic
attr_reader :computer_choice, :weapon
def initialize
 @computer_choice = ["Rock", "Paper", "Scissors"].sample
 #@computer_choice = nil
 #$weapon = $weapon
end

#attr_reader :computer_choice
def results(test)


if (test == "Rock" && @computer_choice == "Scissors" ||
   test == "Scissors" && @computer_choice == "Paper" ||
   test == "Paper" && @computer_choice == "Rock")
   "You win!"
elsif (test == "Scissors" && @computer_choice == "Rock" ||
    test == "Paper" && @computer_choice == "Scissors"  ||
    test == "Rock" && @computer_choice == "Paper")
   "Machine wins!"
else

  "It's a draw!"
  end
 end
end
