def winner_decider(player_move, name)
  computer_move = ["Rock", "Paper", "Scissors"].sample

  if player_move == "Rock"
    if computer_move == "Paper"
      return "Computer is the winner!"
    elsif computer_move == "Scissors"
      return "#{name} is the winner!"
    else 
      return "It was a draw"
    end

  elsif player_move == "Scissors"
    if computer_move == "Rock"
      return "Computer is the winner"
    elsif computer_move == "Paper"
      return "#{name} is the winner!"
    else 
      return "It was a draw"
    end

  elsif player_move == "Paper"
    if computer_move == "Rock"
      return "#{name} is the winner!"
    elsif computer_move == "Scissors"
      return "Computer is the winner!"
    else 
      return "It was a draw"
    end

  else 
    return "error"  
  end    
end