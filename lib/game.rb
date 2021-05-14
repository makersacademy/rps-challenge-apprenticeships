
class Game

  attr_reader :players, :player_weapon, :computer_weapon

  def initialize(player_1, player_weapon, computer_weapon)
    @players = player_1
    @weapon = player_weapon
    @computer = computer_weapon
    @player_weapon = :none
    @computer_weapon = :none
  end

  def self.create(player_1, player_weapon, computer_weapon)
    @game = Game.new(player_1, player_weapon, computer_weapon)
  end

  def self.instance
    @game
  end

  def player_1
    @players
  end

  def player_weapon
    @player_weapon = (@weapon.player_weapon).to_sym
  end

  def computer_weapon
    @computer_weapon = @computer
  end

  def result
    @weapon.result(player_weapon, computer_weapon)
  end

end
