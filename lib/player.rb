class Player
    attr_reader :name, :chosen_item

    def initialize(name)
        @name = name
        @chosen_item = nil
    end

end