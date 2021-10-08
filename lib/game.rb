require_relative "./player"
require_relative "./computer"

WEAPONS = [:rock, :paper, :scissors]

class Game
  attr_reader :player, :computer, :player_weapon, :computer_weapon, :result

  def initialize(player, computer)
    @player = player.name
    @computer = computer.name
    @result = ""
  end

  def player_choice(choice)
    @player_weapon = choice
  end

  def computer_choice
    @computer_weapon = WEAPONS.sample
  end

  def result
    if @player_weapon == @computer_weapon
      result = "Tie!"
    elsif @player_weapon == :rock
      if @computer_weapon == :paper
        result = "You lose! #{computer_weapon} covers #{@player_weapon}!"
      else
        result = "You win! #{@player_weapon} smashes #{@computer_weapon}!"
      end
    elsif @player_weapon == :paper
      if @computer_weapon == :scissors
        result = "You lose! #{@computer_weapon} cuts #{@player_weapon}!"
      else
        result = "You win! #{@player_weapon} covers #{@computer_weapon}!"
      end
    elsif @player_weapon == :scissors
      if @computer_weapon == :rock
        result = "You lose! #{@computer_weapon} smashes #{@player_weapon}!"
      else
        result = "You win! #{@player_weapon} cuts #{@computer_weapon}!"
      end
    end
    return result
  end
end
