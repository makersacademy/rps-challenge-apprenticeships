class Game

  def randomize
    ['Rock', 'Paper', 'Scissors'].sample
  end

  def result(turn, enemy)

    @turn = turn
    @enemy = enemy

    if turn == 'Rock' && enemy == 'Rock'
      'You draw..'
    elsif turn == 'Rock' && enemy == 'Scissors'
      'You win!'
    elsif turn == 'Rock' && enemy == 'Paper'
      'You lose :('
    elsif turn == 'Paper' && enemy == 'Rock'
      'You win!'
    elsif turn == 'Paper' && enemy == 'Paper'
      'You draw..'
    elsif turn == 'Paper' && enemy == 'Scissors'
      'You lose :('
    elsif turn == 'Scissors' && enemy == 'Rock'
      'You lose :('
    elsif turn == 'Scissors' && enemy == 'Paper'
      'You win!'
    elsif turn == 'Scissors' && enemy == 'Scissors'
      'You draw..'
    else 'invalid input detected, please contact support'
    end
  end
end
