def result(your_move, cpu_move)
  if your_move == "Rock" && cpu_move == "Scissors" 
    "You win"
  elsif your_move == "Rock" && cpu_move == "Paper"
    "CPU wins"
  elsif your_move == "Paper" && cpu_move == "Rock"
    "You win"
  elsif your_move == "Paper" && cpu_move == "Scissors"
    "CPU wins"
  elsif your_move == "Scissors" && cpu_move == "Paper"
    "You win"
  elsif your_move == "Scissors" && cpu_move == "Rock"
    "CPU wins"  
  else
    "It's a draw"
  end 
end