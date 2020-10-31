class Game
  attr_reader :player, :comp_choice

  def initialize(player)
    @player = player
    @comp_choice = choose
  end

  def choose
    options = [:rock, :paper, :scissors]
    @comp_choice = options[rand(3)]
  end

  def calculate_result
    actions = {
      :scissors => {:rock => "Computer wins", :paper => "#{@player.name} wins", :scissors => "It's a draw"},
      :rock => {:rock => "It's a draw", :paper => "Computer wins", :scissors => "#{@player.name} wins"},
      :paper => {:rock => "#{@player.name} wins", :paper => "It's a draw", :scissors => "Computer wins"}
    }

    actions[@player.choice][@comp_choice]
  end

end
