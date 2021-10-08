require_relative '../services/rock_paper_scissors_decider'
require_relative 'game_status_codes'

class Game
  include GameStatusCodes
  attr_reader :game_code, :player_one, :player_two, :game_type

  def initialize(code, player_one, player_two, game_type)
    @game_code = code
    @player_one = player_one
    @player_two = player_two
    @game_type = game_type
    @results = {@player_one.name => 0, @player_two.name => 0}
  end

  def play_single_player_round(player_one, player_move, pc_move)
    result = RockPaperScissorsDecider.calculate_winner(player_move, pc_move)
    if result == GameStatusCodes::WIN
      @results[@player_one.name] += 1
    end
    if result == GameStatusCodes::LOSE
      @results[@player_two.name] += 1
    end
    return @results
  end

  def ==(other)
    if self.class == other.class
      @game_code == other.game_code
    else 
      false
    end
  end
end
