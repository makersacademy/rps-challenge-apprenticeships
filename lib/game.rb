require_relative "player"

class Game
    attr_reader :player, :player_move, :computer_move, :winner

    def initialize(player)
        @player = player
    end

    def move(move)
        @player_move = move
        @computer_move = computers_move
        @winner = outcome
    end

    def self.create(player)
        @@game = Game.new(player)
    end

    def self.instance
        @@game
    end
    
    private
    
    def computers_move
        ["Rock", "Paper", "Scissors"][rand(0..2)]
    end

    def outcome
        if @player_move == "Rock" && @computer_move == "Scissors"
            return @player.name + " Wins!!!"
        elsif @player_move == + "Paper" && @computer_move == "Rock"
            return @player.name + " Wins!!!"
        elsif @player_move == "Scissors" && @computer_move == "Paper"
            return @player.name + " Wins!!!"
        elsif @player_move == @computer_move
            return "Tie"
        else
            return "Computer Wins!!!"
        end
    end
end