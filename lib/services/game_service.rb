require_relative '../domain/game_status_codes'
require_relative '../domain/game'
require_relative '../domain/player'

class GameService
  include GameStatusCodes
  COMPUTER_PLAYER = 
  
  def initialize()
    @computer_player = Player.new("ai")
    @games = [] 
  end

  def start_single_player_game(player, game_code)
    @games << Game.new(game_code, player, @computer_player, SINGLE_PLAYER)
  end

  def find_game(code)
    result = @games.find { |game| game.game_code == code }
    if result.nil?
      raise "No game found"
    else
      result
    end
  end

  def play_solo_round(game, player, player_move)
    game = find_game(game)
    pc_move = get_ai_move
    
    puts "player move: #{player_move}" 
    puts "PC move: #{pc_move}"

    game.play_single_player_round(player, player_move, pc_move)
  end

  private

  def get_ai_move
    options = [ROCK, PAPER, SCISSORS]
    options[rand(0..2)]
  end

end
