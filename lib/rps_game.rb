require_relative 'computer'
require_relative 'human'

class Game
  def win(move, computer)
    if move == 'Rock' && computer == 'Scissors'
      'Human wins!'
    elsif move == 'Rock' && computer == 'Paper'
      'Computer wins!'
    elsif move == 'Rock' && computer == 'Rock'
      'Its a draw, try again!'
    elsif move == 'Paper' && computer == 'Rock'
      'Human wins!'
    elsif move == 'Paper' && computer == 'Paper'
      'Computer wins!'
    elsif move == 'Paper' && computer == 'Paper'
      'Its a draw, try again!'
    elsif move == 'Scissors' && computer == 'Paper'
      'Human wins!'
    elsif move == 'Scissors' && computer == 'Rock'
      'Computer wins!'
    elsif move == 'Scissors' && computer == 'Scissors'
      'Its a draw, try again!'
    end
  end
end
