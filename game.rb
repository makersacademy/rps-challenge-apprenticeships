class Game
  def initialize
    bot_score = 0
    player_1_score = 0  
  end

  def bot_choice
    @bot_attack = ["rock", "paper", "scissors"].sample
  end

  def winner
    winner = {
      :rock => {:rock=> "tie", :paper=>"lose", :scissors=> "win"}
      :paper => {:rock=> "win", :paper=>"tie", :scissors=> "lose"}
      :scissors => {:rock=> "lose", :paper=>"win", :scissors=> "tie"}
    }
    return winner[<%= @player_attack =>.to_sym][@bot_attack.to_sym]
  end
end