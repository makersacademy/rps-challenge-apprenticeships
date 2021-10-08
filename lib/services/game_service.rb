require_relative '../domain/game_status_codes'

class GameService
  include GameStatusCodes
  
  def initialize   
    @games = [] 
  end

  def start_single_player_game(player, game_code)
    @games << Game.new(game_code, player, COMPUTER_PLAYER, SINGLE_PLAYER)
  end

  def find_game(code)
    result = @games.find {|game| game.game_code == code }
    if result == nil
      raise "No game found"
    else
      result
    end
  end

end