class Game

  COMBINATIONS = {
    rock: { rock: :draw, paper: :lose, scissors: :win },
    paper: {rock: :win, paper: :draw, scissors: :lose },
    scissors: {rock: :lose, paper: :win, scissors: :draw},
  }

  attr_reader :player_name, :player_weapon, :computer_weapon

  def initialize(player_weapon, computer_weapon)
    @player_name = ["player_name"] #perfectly valid when stored in a hash - however, cannot be accessed when called in template
    @player_weapon = player_weapon
    @computer_weapon = computer_weapon
  end

  def draw?
    result == :draw
  end

  def win?
    result == :win
  end

  def lose?
    result == :lose
  end

  def result

    COMBINATIONS[player_weapon][computer_weapon] #can be called here - not stored as strings
  end

end
