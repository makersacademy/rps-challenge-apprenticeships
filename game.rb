class game

  def initialize (player, computer = computer.new)
    @player_1_name = player
    @computer = computer


  if (@player_1_name == "rock" && computer == "scissors") || 
    (@player_1_name == "scissors" && computer == "paper") || (player1 == "paper" && player2 == "rock")
    p "Player 1 wins"

  elsif (@player_1_name == "rock" && computer == "rock") || 
    (@player_1_name == "paper" && computer == "paper") || (player1 == "scissors" && player2 == "scissors")
    p "It's a draw"

  else
    p "Player 2 wins"   
  end