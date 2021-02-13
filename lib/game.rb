class Game

  def move_generator
    %w[rock paper scissors].sample
  end

  def battle(move)
    computer = move_generator
   
    if move == computer
      'You draw'
    elsif  move == 'rock' && computer ==  'scissors'
      'You win'
    elsif move == 'scissors' && computer == 'paper'
      'You win'
    else
      'You lose'
    end
  end

end