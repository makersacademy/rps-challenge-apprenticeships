class Game

  def initialize(player_1)
    @players = [player_1]
  end

  def self.create(player_1)
    @game = Game.new(player_1)
  end

  def self.instance
    @game
  end

  def player_1
    @players.first
  end
  
end