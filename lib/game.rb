class Game
  @@current_game
  attr_reader :name, :winner, :loser, :draw, :user_choice, :bot_choice
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

  def declare_winner
    cmp_move = {rock: :scissors, scissors: :paper, paper: :rock}
    if @bot_choice == cmp_move[@user_choice]
      @winner = @name

    elsif @user_choice == cmp_move[@bot_choice]
     @winner = "the bot"

    else
      @draw = true
    end
  end
     

end