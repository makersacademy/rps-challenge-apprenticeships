require_relative 'computer'
class Game < Computer
  attr_accessor :result
  def result(computer_pick, player_pick)
    if  computer_pick == "scissors" && player_pick == "rock" ||
        computer_pick == "paper" && player_pick == "scissors" ||
        computer_pick == "rock" && player_pick == "paper"
        puts "You win!"
    elsif computer_pick == "rock" && player_pick == "rock" ||
        computer_pick == "scissors" && player_pick == "scissors" ||
        computer_pick == "paper" && player_pick == "paper"
        puts "It's a draw"
    elsif player_pick == "scissors" && computer_pick == "rock" ||
        player_pick == "paper" && computer_pick == "scissors" ||
        player_pick == "rock" && computer_pick == "paper"
        puts "Computer Wins!"
    end
  end
end
