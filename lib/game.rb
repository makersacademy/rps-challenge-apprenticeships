class Game

    def initialize(player_item, computer_item)
        @player_item = player_item
        @computer_item = computer_item
    end

    def define_winner
        if @player_item == @computer_item
            "It's a tie!!!"
        elsif (@player_item == 'Rock' && @computer_item == 'Scissors') ||
            (@player_item == 'Scissors' && @computer_item == 'Paper') ||
            (@player_item == 'Paper' && @computer_item == 'Rock')
            "You win!!!"
        else
            "Computer wins!!!"
        end
    end
end