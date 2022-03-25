class Game
  def play(player, computer)
    if player == computer
      "It's a draw"
    elsif player == ('Rock' && computer == 'Paper') ||
          (player == 'Paper' && computer == 'Scissor') ||
          (player == 'Scissor' && computer == 'Rock')
      'You lost'
    else
      'You win!'
    end
  end
end
