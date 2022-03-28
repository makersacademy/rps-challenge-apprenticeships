class RPS 
    def initialize
        @computer_attack = ["rock", "paper", "scissors"].sample
    end

    def show
        return @computer_attack
    end
    
    def who_wins(player)
        if player == @computer_attack 
            return "It's a draw"
        elsif player == "rock" && @computer_attack == "paper"
            return "Computer wins!"
        elsif player == "paper" && @computer_attack == "scissors"
            return "Computer wins!"
        elsif player == "scissors" && @computer_attack == "rock"
            return "Computer wins!"
        elsif @computer_attack == "rock" && player == "paper"
            return "You win!"
        elsif @computer_attack == "paper" && player == "scissors"
            return "You win!"
        elsif @computer_attack == "scissors" && player == "rock"
            return "You win!"
        end
    end

end
