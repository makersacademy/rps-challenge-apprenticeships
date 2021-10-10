class Game
  @@current_game
  def initialize(name)
    @@current_game = self
    @name = name
  end

  def user_turn(choice)
    @user_choice = choice;
  end

  
    


  def self.current_game
    @@current_game
  end
end