
class Messenger

  def message(player_name, outcome)
  p @player_name = player_name
  p @outcome = outcome
    
    case @outcome[1]
      when 0
        return "I chose #{@outcome[0]} so it is a draw."
      when 1
        return "I chose #{@outcome[0]} so I win!"
      when 2
        return "I chose #{@outcome[0]} so you won! Well done #{@player_name}"
    end #case
  
  end

end
  
