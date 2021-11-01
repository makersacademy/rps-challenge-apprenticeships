
class RPS

  def initialize
    @choices = ["rock","paper","scissors"]
    @outcome = []
  end

  def play(player_choice)
    
    my_choice = @choices[random_choice.to_i]
    p "rps my_choice"
    p my_choice
    @outcome[0] = my_choice
    p "rps outcome[0]"
    p @outcome[0]
    player_choice.downcase!
    p '+++++'
    p my_choice
    p player_choice
    p '++++++'

    if my_choice == player_choice then # If one
      @outcome[1] = 0
    elsif my_choice == "rock"
      if player_choice == "paper" then
        @outcome[1] = 2
      else
        @outcome[1] = 1
      end 
    elsif my_choice == "paper" then
      if player_choice == "scissors" then
        @outcome[1] = 2
      else
        @outcome[1] = 1
      end   
    elsif my_choice == "scissors" then
      if player_choice == "rock" then
        @outcome[1] = 2
      else
        @outcome[1] = 1
      end
    end # If one
    return @outcome
  end
  


  def random_choice
    return @choices[rand(2)]
  end

end
