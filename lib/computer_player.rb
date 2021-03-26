require_relative 'rules.rb'

class ComputerPlayer

    attr_reader :name, :moves

    def initialize(rules = Rules.new)
        @name = 'Computer'
        @moves = rules.moves
    end

    def make_move
        @moves.sample
    end
end