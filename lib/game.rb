class Game
  attr_reader :player_1, :player_2, :player_1_choice, :player_2_choice

  def initialize(player_1, player_2=Computer.new)
    @player_1 = player_1
    @player_2 = player_2
  end

  def set_player_1_choice(choice)
    @player_1_choice = choice
  end

  def set_player_2_choice(choice=player_2.choice)
    @player_2_choice = choice
  end
end
