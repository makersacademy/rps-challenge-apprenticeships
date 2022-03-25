
class Play
    
    attr_reader :computer_choice

    def initialize(player_choice)
      @player_choice = player_choice
      @computer_choice = ["rock", "paper", "scissors"].sample
      @rules = { 
        "rock" => "paper",
        "paper" => "scissors",
        "scissors" => "rock"
      }
    end

    

    def play
        if @player_choice == @computer_choice
           return "It's a draw..."
        elsif @rules[@player_choice] == @computer_choice
           return "Computer wins :("
        else
           return "You win!"
        end 
    end
  
  end

  

  
  
  
  
  