class Game
  def final_message(player, computer)
    winner = calc_winner(player, computer)
    case winner
    when "player" then "You WIN!"
    when "computer" then 'You LOSE!'
    else "It's a DRAW!"   
    end
  end

  def computer_option
    ["ROCK", "PAPER", "SCISSORS"].sample
  end

  private
  def calc_winner(player, computer)
    if player == computer
      @winner = "draw"
    elsif (player == "ROCK" && computer == "SCISSORS") ||
          (player == "PAPER" && computer == "ROCK") ||
          (player == "SCISSORS" && computer == "PAPER")
          
      @winner = 'player'
    else
      @winner = 'computer'
    end
  end
end