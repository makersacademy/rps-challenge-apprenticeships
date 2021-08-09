
def random(selection, name)
  comp = ["rock", "paper", "scissors"].sample
  if (selection == "scissors" && comp == "paper") || (selection == "rock" && comp == "scissors") || (selection == "paper" && comp == "rock")
    return "#{name} wins"
  elsif (comp == "scissors" && selection == "paper") || (comp == "rock" && selection == "scissors") || (comp == "paper" && selection == "rock")
    return "#{name} loses"
  else
    return "It's a draw"
  end
end