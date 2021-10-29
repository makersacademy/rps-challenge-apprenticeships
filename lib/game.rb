class PlayGame

  def initialize(choice)
    @player_choice = choice
  end

  def player1_choice
     @player_choice
  end 


  def game_result
    player = @player_choice
    p computer = ["rock", "paper", "scissors"].sample
    if player == "rock" && computer == "scissors"
      return "you:#{player} VS computer:#{computer}. You win"
    elsif player == "scissors" && computer == "paper"
      return "you:#{player} VS computer:#{computer}. You win"
    elsif player == "paper" && computer == "rock"
     return  "you:#{player} VS computer:#{computer}. You win"
    else 
     return "you:#{player} VS computer:#{computer}. Computer wins"
    end 
  end 
end 