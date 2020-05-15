class Game

    attr_accessor :name, :choice


    def initialize(player = Player.new, player_choice = PlayerChoice.new)
        @name = player
        @choice = player_choice
        @computer_choice = ["Rock","Paper","Scicsors"].sample
    end

end