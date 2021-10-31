class Player
attr_reader :name, :choice

  def initialize(player_name)
    @name = player_name
    @choice = nil
  end

  def playerchoice(choice)
    @choice = choice
  end
end