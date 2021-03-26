class Game

    attr_reader :player_2, :player_1, :player1_move, :player2_move, :rules

    def initialize(player_1, player_2 = ComputerPlayer.new, rules=Rules.new)
        @player_1 = player_1
        @player_2 = player_2
        @rules = rules
    end

    def self.create(player_1, player_2, rules)
        @game = Game.new(player_1, player_2, rules)
    end
      
    def self.instance
        @game
    end

    def player_1_move(move)
        @player1_move = move
    end

    def player_2_move
        player_2.make_move
       @player2_move = @player_2.make_move
    end

    def result(player1_move, player2_move)
        return :draw if player1_move == player2_move
        return :win if rules.beats[player1_move] == player2_move
        return :lose
    end
end