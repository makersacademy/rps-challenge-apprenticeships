require_relative "./player"
require_relative "./computer"

WEAPONS = [:rock, :paper, :scissors].freeze

class Game
  attr_reader :player, :computer, :player_weapon, :computer_weapon, :result

  def initialize(player, computer)
    @player = player.name
    @computer = computer.name
  end

  def player_choice(choice)
    @player_weapon = choice
    @player_weapon.to_sym
  end

  def computer_choice
    @computer_weapon = WEAPONS.sample
  end

  def tie
    "Tie!"
  end

  def win
    "You win!"
  end

  def lose
    "You lose!"
  end

  def outcome
    if @player_weapon.to_sym == @computer_weapon
      tie
    elsif (@player_weapon.to_sym == :paper && @computer_weapon == :rock) || (@player_weapon.to_sym == :rock && @computer_weapon == :scissors) || (@player_weapon.to_sym == :scissors && @computer_weapon == :paper)
      win
    elsif (@player_weapon.to_sym == :paper && @computer_weapon == :scissors) || (@player_weapon.to_sym == :rock && @computer_weapon == :paper) || (@player_weapon.to_sym == :scissors && @computer_weapon == :rock)
      lose
    end
  end
end
