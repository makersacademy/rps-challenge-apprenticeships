class Game

  def initialize
  end

  def choose
    options = ["rock", "paper", "scissors"].sample
  end

  def results
    if player_name == "rock" && cpu == "scissors"
      puts "#{player_name} wins"
    elsif cpu == "rock" && player_name == "scissors"
      puts "#{cpu} wins"
    elsif player_name == "paper" && cpu == "rock"
      puts "#{player_name} wins"
    elsif cpu == "paper" && player_name == "rock"
      puts "#{cpu} wins"
    elsif player_name == "scissors" && cpu== "paper"
      puts "#{player_name} wins"
    elsif cpu == "scissors" && player_name == "paper"
      puts "#{cpu} wins"
    else
      puts "It's a draw"
    end
  end
  
end
