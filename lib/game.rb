

class Game
    
    def initialize(user_choice)
        @user_choice = user_choice
        @choice_arr = ['Rock', 'Paper', 'Scissors']
        @random_num = rand(0..2)
    end

    def compututer_choice
         @choice_arr[@random_num]
    end

    def game_on 
        player_one =  @user_choice.downcase
        player_two = compututer_choice.downcase
        p player_one
        p player_two

        if player_one == 'rock' && player_two == 'scissors'
            'Player 1 wins'
        elsif player_one == 'paper' && player_two == 'rock'
            'Player 1 wins'
        elsif player_one == 'scissors' && player_two == 'paper'
            'Player 1 wins'
        elsif player_two == 'rock' && player_one == 'scissors'
            'Player 2 wins'
        elsif player_two == 'paper' && player_one == 'rock'
            'Player 2 wins'
        elsif player_two == 'scissors' && player_one == 'paper'
            'Player 2 wins'
        else
            "It's a draw"

        end
    end
end




