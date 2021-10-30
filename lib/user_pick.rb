class User_Pick
    attr_reader :arr
    def initialize(first, second, third)
        @arr = [first, second, third]
    end

    def user_decided
        @arr.each do |item|
            return item if item != nil
        end
    end
end