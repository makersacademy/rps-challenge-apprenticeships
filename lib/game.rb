class Game
  @@current_game
  def initialize(name)
    @@current_game = self
    @name = name
    @user_choice
    @bot_choice
    @winner
    @loser
    @draw
  end

  def user_turn(choice)
    @user_choice = choice;
  end

  def bot_turn
    @bot_choice = [:rock,:paper,:scissors].sample
  end
    


  def self.current_game
    @@current_game
  end
end