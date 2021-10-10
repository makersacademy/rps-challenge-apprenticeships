require_relative "../lib/game.rb"

describe Game do
  describe "#initialize" do
    it "takes the user's name as an argument" do
      expect{described_class.new("name")}.not_to raise_error
    end

    it "stores the user's name" do
      user_name = "John"
      my_game = described_class.new(user_name)
      expect(my_game.instance_variable_get(:@name)).to eq(user_name)
    end

    it "assigns the instantiation to a class variable" do
      my_game = described_class.new("Susan")
      expect(described_class.current_game).to eq(my_game)
    end
  end

  describe ".current_game" do
    it "returns the currently active game object" do
      my_game = described_class.new("egbert")
      expect(described_class.current_game).to eq(my_game)
    end
  end

  describe "#user_turn" do
    it "accepts the users choice as a parameter" do
      my_game = described_class.new("bob")
      expect{my_game.user_turn(:rock)}.not_to raise_error
    end

    it "throws error if the user doesn't provide a valid argument" do
      my_game = described_class.new("susan")
      expect{my_game.user_turn()}.to raise_error
    end
  end
end