require_relative '../services/rock_paper_scissors_decider'
require_relative 'game_status_codes'

class Game
  include GameStatusCodes
  attr_reader :game_code, :player_one, :player_two, :game_type, :results, :round_winner

  def initialize(code, player_one, player_two, game_type)
    @game_code = code
    @player_one = player_one
    @player_two = player_two
    @game_type = game_type
    @results = {@player_one.name => 0, @player_two.name => 0}
    @round_winner = nil
  end

  def play_single_player_round(player_one, player_move, pc_move)
    result = RockPaperScissorsDecider.calculate_winner(player_move, pc_move)
    case result
    when GameStatusCodes::PLAYER_ONE
      @results[@player_one.name] += 1
      @round_winner = @player_one
    when GameStatusCodes::PLAYER_TWO
      @results[@player_two.name] += 1
      @round_winner = @player_two
    else
      @round_winner = GameStatusCodes::DRAW
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
