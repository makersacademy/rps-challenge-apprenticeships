
class Game

  def initialize(player_choice)
    @player_choice = player_choice
		@computer_move = ["rock", "paper", "scissors"].sample
  end

  def play
    if @player_choice == @computer_move
			return "It's a draw"
		elsif @player_choice == "rock" && @computer_move == "scissors"
			return "Player wins as the computer chose scissors"
		elsif @player_choice == "scissors" && @computer_move == "rock"
			return "Computer wins as the computer chose rock"
		elsif @player_choice == "paper" && @computer_move == "rock"
			return "Player wins as the computer chose rock"
		elsif @player_choice == "rock" && @computer_move == "paper"
			return "Computer wins as the computer chose paper"
		elsif @player_choice == "scissors" && @computer_move == "paper"
			return "Player wins as the computer chose paper"
		else @player_choice == "paper" && @computer_move == "scissors"
			return "Computer wins as the computer chose paper"
		end
	end
end
