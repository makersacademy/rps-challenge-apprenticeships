require_relative 'player'

class Game
  attr_reader :player_one
  attr_reader :player_two
  attr_reader :result
  attr_reader :current_turn
  attr_reader :spock_game

  def initialize(player_one, player_two, spock_game)
    @player_one = player_one
    @player_two = player_two
    @current_turn = @player_one
    @spock_game = spock_game
  end

  def spock_game?
    @spock_game
  end

  def spock_update(value)
    @spock_game = value
  end

  def switch_turn
    if @current_turn == @player_one
      @current_turn = @player_two
    elsif @current_turn == @player_two
      @current_turn = @player_one
    end
  end
  
  def opponent
    if @current_turn == @player_one
      @player_two
    elsif @current_turn == @player_two
      @player_one
    end
  end

  def outcome(player_one, player_two)
    if player_one.move == "Rock"
      if player_two.move == "Scissors" || player_two.move == "Lizard"
        @result = player_one
      elsif player_two.move == "Paper" || player_two.move == "Spock"
        @result = player_two
      elsif player_two.move == "Rock"
        @result = "Draw"
      end
    elsif player_one.move == "Paper" 
      if player_two.move == "Rock" || player_two.move == "Spock"
        @result = player_one
      elsif player_two.move == "Scissors" || player_two.move == "Lizard"
        @result = player_two
      elsif player_two.move == "Paper"
        @result = "Draw"
      end
    elsif player_one.move == "Scissors"
      if player_two.move == "Paper" || player_two.move == "Lizard"
        @result = player_one
      elsif player_two.move == "Rock" || player_two.move == "Spock"
        @result = player_two
      elsif player_two.move == "Scissors"
        @result = "Draw"
      end
    elsif player_one.move == "Lizard"
      if player_two.move == "Paper" || player_two.move == "Spock"
        @result = player_one
      elsif player_two.move == "Rock" || player_two.move == "Scissors"
        @result = player_two
      elsif player_two.move == "Lizard"
        @result = "Draw"
      end
    elsif player_one.move == "Spock" 
      if player_two.move == "Scissors" || player_two.move == "Rock"
        @result = player_one
      elsif player_two.move == "Paper" || player_two.move == "Lizard"
        @result = player_two
      elsif player_two.move == "Spock"
        @result = "Draw"
      end
    end
  end
end
