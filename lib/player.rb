class Player 

    attr_reader :name
    

    def initialize(name)
        @name = name
        
    
    end   
    
    def computer_choice
        @random_choice = rand(2)
        if @random_choice == 0
           return "rock"
          elsif @random_choice == 1
           return "paper"
          elsif @random_choice == 2
           return "scissors"
                  
        end  
        @random_choice
    end    

    def rock_paper_scissors(click_choice)
        @player_choice = click_choice

        if @player_choice == "rock" && computer_choice == "scissors"
            return "Player 1 wins"
          elsif @player_choice == "paper" && computer_choice == "rock"
            return "Player 1 wins"
          elsif @player_choice == "scissors" && computer_choice == "paper"
            return "Player 1 wins"
          elsif @player_choice == "paper" && computer_choice == "scissors"
            return "computer wins"        
          elsif computer_choice == "rock" && @player_choice == "scissors"
            return "computer wins"
          elsif computer_choice == "paper" && @player_choice == "rock"
            return "computer wins"
          elsif computer_choice == "scissors" && @player_choice == "paper"
            return "computer wins"  
          elsif @player_choice == computer_choice
            return "It's a draw"                
          end        

    end     



end     