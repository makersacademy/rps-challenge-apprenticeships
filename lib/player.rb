class Player
  attr_reader :name, :selected_choice

  def initialize(name)
    @name = name
  end

  def choice(move)
    @selected_choice = move
  end
end
