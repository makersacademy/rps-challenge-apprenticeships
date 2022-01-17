class Game

  attr_reader :game_turn, :player_turn 
  
  def initialize(player_turn)
    @player_turn = player_turn
  end
  
  def choice
    ['Rock', 'Paper', 'Scissors'].sample
  end

  def run_game
    @game_turn = choice
    return 'draw' if draw?
    return 'win' if win?
    return 'lose' if lose?
  end

  private 

  def win?
    if @player_turn == 'Rock' && @game_turn == 'Scissors' 
      true
    elsif @player_turn == 'Paper' && @game_turn == 'Rock' 
      true
    elsif @player_turn == 'Scissors' && @game_turn == 'Paper'
      true
    end
  end

  def lose?
    if @player_turn == 'Rock' && @game_turn == 'Paper' 
      true
    elsif @player_turn == 'Paper' && @game_turn == 'Scissors'
      true
    elsif @player_turn == 'Scissors' && @game_turn == 'Rock'
      true
    end
  end

  def draw?
    @player_turn == @game_turn
  end

end
