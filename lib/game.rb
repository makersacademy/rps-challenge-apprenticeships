#require './app.rb'

class Game 
  WEAPONS = ["Rock", "Paper", "Scissors"]

  def self.rock 
    return Game::WEAPONS[0]
  end

  def self.paper 
    return Game::WEAPONS[1]
  end

  def self.scissors 
    return Game::WEAPONS[2]
  end

  # RULES = { :Rock=>:Scissors,
  #           :Scissors=>:Paper,
  #           :Paper=>:Rock }

#   RULES = {
#   :rock     => {:rock => :draw, :paper => :loose, :scissors => :win},
#   :paper    => {:rock => :win, :paper => :draw, :scissors => :loose},
#   :scissors => {:rock => :loose, :paper => :win, :scissors => :draw}
# }
 
  def result(player_weapon,computer_weapon)
    #RULES[@player_weapon][@computer_weapon]
    p " player weapon #{player_weapon}"
    p " PC weapon #{computer_weapon}"
    p "weapon 1 is #{Game::rock}"
    if player_weapon == computer_weapon
      :draw
    elsif
      (player_weapon == Game::rock && computer_weapon == Game::scissors) || 
      (player_weapon == Game::paper && computer_weapon == Game::rock) || 
      (player_weapon == Game::scissors && computer_weapon == Game::paper)
        :win
    else
        :loose
    end
  end
end
    

    # unless @player_weapon == @computer_weapon  
    #   #RULES[@player_weapon][@computer_weapon] ? :win :loose
    #   RULES[:Rock][:Paper] ? :win :loose
    #   #else
    #   #:draw
    # #end


