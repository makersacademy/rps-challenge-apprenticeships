class GameResult
  attr_reader :choices, :user_choice, :computer_choice

  def initialize(user_choice, computer_choice)
    @user_choice = user_choice
    @computer_choice = computer_choice
    @choices = [user_choice, computer_choice]
  end
end