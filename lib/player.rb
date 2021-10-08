class Player
  attr_reader :name, :player_choice
  def initialize(name)
    @name = name
  end

  def selection(user_choice)
    @player_choice = user_choice
  end
end