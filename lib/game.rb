class Game

  def result(player, computer)
    if player == "rock" && 
      computer == "scissors"
        @winner = "Jackie"
    elsif player == "scissors" && 
      computer == "paper"
        @winner = "Jackie"
    elsif player == "paper" && 
      computer == "rock"
        @winner = "Jackie"
    elsif computer == "rock" && 
      player == "scissors"
        @winner = "Computer"
    elsif computer == "scissors" && 
      player == "paper"
        @winner = "Computer"
    elsif computer == "paper" && 
      player == "rock"
        @winner = "Computer"
    elsif puts "It's a draw!"
    end
  end
end
