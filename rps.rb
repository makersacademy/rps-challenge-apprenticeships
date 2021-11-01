
class RPS

  def initialize
    @choices = ["rock","paper","scissors"]
    @outcome = []
  end

  def play(player_choice)
    
    my_choice = random_choice
    @outcome[0] = my_choice
    player_choice.downcase!

    if my_choice == player_choice 
      @outcome[1] = 0
    elsif my_choice == "rock"
      if player_choice == "paper"
        @outcome[1] = 2
      else
        @outcome[1] = 1
      end 
    elsif my_choice == "paper"
      if player_choice == "scissors"
        @outcome[1] = 2
      else
        @outcome[1] = 1
      end   
    elsif my_choice == "scissors" 
      if player_choice == "rock" 
        @outcome[1] = 2
      else
        @outcome[1] = 1
      end
    end # If one
    return @outcome
  end

  def random_choice
    return @choices[rand(3)]
  end

end
