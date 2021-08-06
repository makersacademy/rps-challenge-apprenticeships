require_relative 'move_generator'
computer_choice = Move_Generator.new
def check(user_move, computer_choice)
  @winner = "Player 1" if user_move == 'Rock' && computer_choice == 'Scissor'
  @winner = "Player 1" if user_move == 'Scissor' && computer_choice == 'Paper'
  @winner = "Player 1" if user_move == 'Paper' && computer_choice == 'Rock'
  @winner = "Player 2" if computer_choice == 'Rock' && user_move == 'Scissor'
  @winner = "Player 2" if computer_choice == 'Scissor' && user_move == 'Paper'
  @winner = "Player 2" if computer_choice == 'Paper' && user_move == 'Rock'
  @winner = "Nobody" if user_move == 'Rock' && computer_choice == 'Rock'
  @winner = "Nobody" if user_move == 'Scissor' && computer_choice == 'Scissor'
  @winner = "Nobody" if user_move == 'Paper' && computer_choice == 'Paper'
  return @winner
end
