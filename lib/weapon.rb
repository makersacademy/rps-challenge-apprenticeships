class Weapon

  attr_reader :player_weapon

  RULES = { rock: :scissors,
    paper: :rock,
    scissors: :paper }

  def initialize(player_weapon)
    @player_weapon = player_weapon
  end

  def draw(player_weapon, computer_weapon)
    player_weapon == computer_weapon
  end

  def beats?(player_weapon, computer_weapon)
    RULES[player_weapon] == computer_weapon
  end

  def result(player_weapon, computer_weapon)
    return :Draw if draw(player_weapon, computer_weapon)
    return :Win if beats?(player_weapon, computer_weapon)
    return :Lose unless beats?(player_weapon, computer_weapon)
  end

end
