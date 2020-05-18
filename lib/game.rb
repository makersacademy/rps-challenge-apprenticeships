class Game

  attr_accessor :name, :user_choice, :comp_choice


  def initialize(player = Player.new, user_input = choice)
      @name = player
      @user_choice = user_input
      @comp_choice = ['Rock', 'Paper', 'Scissors'].sample
  end


  def result 
    return logic(user_choice.to_s,comp_choice.to_s)
  end 

  private

  def logic(user,comp)
    if (user == "Rock" && comp == "Scissors") || 
      (user == "Scissors" && comp == "Paper") || 
      (user == "Paper" && comp == "Rock")
        return "You win!!"
      elsif (user == "Rock" && comp == "Rock") || 
      (user == "Scissors" && comp == "Scissors") || 
      (user == "Paper" && comp == "Paper")
        return "It's a draw!!"
      else
        return "Computer Wins!!"
    end
  end
    
end