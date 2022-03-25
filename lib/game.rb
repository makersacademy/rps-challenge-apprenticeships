class Game
  attr_reader :player_one, :player_two, :instance

  def initialize(player_one, player_two = nil)
    @player_one = Player.new(player_one)
    @player_two = Player.new(player_two)
  end

  def self.instance
    @game_instance
  end 

  def self.start_game(player_one, player_two = 'Computer')
    @game_instance ||= Game.new(player_one, player_two)
  end
end
