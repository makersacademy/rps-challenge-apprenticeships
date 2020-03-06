class Game
attr_reader :player_choice, :computer_choice

  def initialize(player_name)
    @player = player_name
  end

  def choose(option)
    @player_choice = option
  end

  def computer_choice
    @computer_choice = [:rock, :scissors, :paper].sample
  end
end

#   win_conditions = {
#   "rock" => "scissors",
#   "paper" => "rock",
#   "scissors" => "paper"
# }
#
# puts "It's a draw" if player1 == player2
# #next line is calling value from player1 key and checking if it's the same as the player2 input
# puts win_conditions[player1] == player2 ?
# "Player 1 wins" : "Player 2 wins"
