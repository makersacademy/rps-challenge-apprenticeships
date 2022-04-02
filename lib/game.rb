class Game
  
  attr_reader :player_weapon, :computer_weapon

  def initialize(weapon)
    @player_weapon = weapon
    computer_weapon
  end

  def computer_weapon
  weapons = ["rock", "paper", "scissors"]
  computer_choice = weapons.sample
  end

  def result
    if (@player_weapon == "rock" && computer_weapon == "scissors") 
      return "You wins"
    elsif (@player_weapon == "scissors" && computer_weapon == "paper") 
      return "You wins"
    elsif (@player_weapon == "paper" && computer_weapon == "rock") 
      return "You wins"
    elsif (computer_weapon == "rock" && @player_weapon == "scissors") 
      return "Computer wins"
    elsif (computer_weapon == "scissors" && @player_weapon == "paper") 
      return "Computer wins"
    elsif (computer_weapon == "paper" && @player_weapon == "rock") 
      return "Computer wins"
    else
      return "It's a draw"
    end
  end
  
end

# rps = Game.new("rock")
# rps.result
