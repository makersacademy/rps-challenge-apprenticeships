class Game
  attr_reader :player, :player_choice

RULES = { rock: :scissors,
  paper: :rock,
  scissors: :paper }

WEAPONS = [:rock, :paper, :scissors]

  def initialize(player)
    @player = player
  end

  def make_player_choice(weapon)
    weapon_sym = weapon.to_sym
    if WEAPONS.include? weapon_sym
      @player_choice = weapon_sym
    end
  end

  # def result
  #   RULES[player_choice][computer.choice()] ? :win : :lose
  # end
end