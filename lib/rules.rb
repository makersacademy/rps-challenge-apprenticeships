class Game
    def initialize(guess:)
        @guess = guess.downcase
        
    end
    def computer_guess
        computer_guesses = %w{rock paper scissors}
        computer_guesses.sample    
    end

    def winner_is
        if rule_engine[computer_guess.to_sym].include? @guess
            return "computer wins"

        elseif rule_engine[@guess.to_sym].include? @computer_guess
            "you win"

        else 
            'Draw' 
        end
    
    end


    def rule_engine
    { 'rock' =>['scissors'],
        'paper' =>['rock'],
        'scisors' =>['paper']
    }
        
    end
end
