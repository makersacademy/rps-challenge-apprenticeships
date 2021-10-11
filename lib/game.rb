class Game
  attr_reader :player1, :player2, :weapon

  def initialize(player1)
    @player1 = player1
    @player2 = "Computer"
  end

  def self.create(player1)
    @game = Game.new(player1)
  end

  def self.instance
    @game
  end

  def opponent_choice(weapon = Weapon.new)
    @weapon = weapon
    @weapon.generate
  end
end
