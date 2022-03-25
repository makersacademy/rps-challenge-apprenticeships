require './app.rb'
class Game 
  #WEAPONS = [:Rock, :Paper, :Scissors]

  RULES = { Rock: :Scissors,
            Scissors: :Paper,
            Paper: :Rock }
 
  def result
    #unless @player_weapon == @computer_weapon
    p RULES
    p @player_weapon # return nil
      RULES[@player_weapon][@computer_weapon] ? :win :loose
    #else
      #:draw
    #end
  end
end

Trial = Game.new
print Trial.result