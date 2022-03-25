class Game

RULES = { rock: :scissors,
  paper: :rock,
  scissors: :paper }

WEAPONS = [:rock, :paper, :scissors]

  def initialize(player)
    @player = player
  end

  def player_choice=(weapon)
    fail 'not a possible weapon' unless WEAPONS.includes? weapon
    @player_choice = weapon
  end

  def result
    RULES[player_choice][computer.choice()] ? :win : :lose
  end
end