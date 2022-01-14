class Game

  attr_reader :game_turn, :player_turn 
  
  def initialize(player_turn)
    @player_turn = player_turn
  end
  
  def choice
    ['Rock', 'Paper', 'Scissors'].sample
  end

  def run_game
    @game_turn = self.choice
    return 'draw' if draw?
    return 'win' if win?
    return 'lose' if lose?
  end

  private 
  
  def win?
    return true if @player_turn == 'Rock' && @game_turn == 'Scissors' || @player_turn == 'Paper' && @game_turn == 'Rock' || @player_turn == 'Scissors' && @game_turn == 'Paper'
  end

  def lose?
    return true if @player_turn == 'Rock' && @game_turn == 'Paper' || @player_turn == 'Paper' && @game_turn == 'Scissors' || @player_turn == 'Scissors' && @game_turn == 'Rock'
  end

  def draw?
    return true if @player_turn == @game_turn
  end

end