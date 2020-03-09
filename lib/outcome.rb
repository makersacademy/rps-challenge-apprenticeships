class Outcome
#game logic
attr_reader :options, :computer_choice, :weapon
def initialize
 @computer_choice = ["Rock", "Paper", "Scissors"]
 #@computer_choice = nil
@weapon = $weapon
end

#attr_reader :computer_choice
def results
   @weapon = $weapon
   #its not reading computer cchoicw
   @computer_choice.sample
if
  @weapon == "rock" && @computer_choice == "scissors" ||
  @weapon == "scissors" && @computer_choice == "paper" ||
  @weapon == "paper" && @computer_choice == "rock"
  puts "You win!"
elsif
    @weapon == "scissors" && @computer_choice == "rock" ||
     @weapon == "paper" && @computer_choice == "scissors"  ||
     @weapon == "rock" && @computer_choice == "paper"
  puts "Machine wins!"
else
  @weapon == @computer_choice
  puts "It's a draw!"
  end
 end
end
