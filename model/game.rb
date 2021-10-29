
class Game

  def initialize(player1="", player2="")
  end 

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end 

  def self.create_for_1(player)
    @game = Game.new(player)
  end 

  def self.instance
    @game
  end 

end