class Game
  attr_reader :current_turn

  def initialize(player_one, player_two = nil)
    @player_one = Player.new(player_one)
    @player_two = Player.new(player_two)
  end

  def self.instance
    @game_instance ||= Game.new
  end 

  def self.start_game(player_one, player_two = 'Computer')
    @game_instance = Game.new(player_one, player_two)
  end
end
