require_relative '../domain/game_status_codes'

class RockPaperScissorsDecider
  include GameStatusCodes

  def self.calculate_winner(player_one_move, player_two_move)
    puts "player 1: #{player_one_move}, player 2: #{player_two_move}"

    if player_one_move == player_two_move
      return DRAW
    end

    case player_one_move
    when ROCK
      player_picked_rock(player_two_move)
    when PAPER
      player_picked_paper(player_two_move)
    when SCISSORS
      player_picked_scissors(player_two_move)
    end
  end

  private 
  
  def self.player_picked_rock(player_two_move)
    return PLAYER_TWO if player_two_move == PAPER
    return PLAYER_ONE if player_two_move == SCISSORS
  end

  def self.player_picked_paper(player_two_move)
    return PLAYER_ONE if player_two_move == ROCK
    return PLAYER_TWO if player_two_move == SCISSORS
  end

  def self.player_picked_scissors(player_two_move)
    return PLAYER_ONE if player_two_move == PAPER
    return PLAYER_TWO if player_two_move == ROCK
  end
end
  