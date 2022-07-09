class Game
    def initialize(player)
        @player = player
        @guess = ["rock", "paper", "scissors"]
    end

    def guess
        return @guess.sample
    end
end