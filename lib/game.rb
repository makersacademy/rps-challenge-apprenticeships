Class Game

    def initialize(choice)
        @choice = choice
        comp = ['rock', 'paper', 'scissors']
        comp_choice = comp.sample
    end

    def result
        if @choice == 'rock' && comp_choice == 'scissors'
            return 'player wins'
        elsif @choice == 'paper' && comp_choice == 'rock'
            return 'player wins'
        elsif @choice == 'scissors' && comp_choice == 'paper'
            return 'player wins'
        elsif @choice == comp_choice
            return 'draw'
        elsif @choice == 'rock' && comp_choice == 'paper'
            return 'comp wins'
        elsif @choice == 'paper' && comp_choice == 'scissors'
            return 'comp wins'
        elsif @choice == 'scissors' && comp_choice == 'rock'
            return 'comp wins'
        end
    end
        
end