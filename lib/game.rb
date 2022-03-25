class Game
  attr_reader :current_turn

  def initialize(player_1, player_2 = nil)
    @player_1 = Player.new(player_1)
    @player_2 = Player.new(player_2)
  end

  def self.instance
    @game_instance ||= Game.new
  end 

  def self.start_game(player_1, player_2 = 'Computer')
    @game_instance = Game.new(player_1, player_2)
  end
end