class Game

  def move_generator
    %w[rock paper scissors].sample
  end

  def battle(move, pc_move)
       
    if move == pc_move
      'You draw'
    elsif  move == 'rock' && pc_move ==  'scissors'
      'You win'
    elsif move == 'scissors' && pc_move == 'paper'
      'You win'
    else
      'You lose'
    end
  end

end