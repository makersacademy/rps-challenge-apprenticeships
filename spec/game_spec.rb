require_relative "../lib/game.rb"

describe Game do
  user_name = "larry"
  subject(:my_game) {described_class.new(user_name)}

  describe "#initialize" do
    it "takes the user's name as an argument" do
      expect{described_class.new("name")}.not_to raise_error
    end

    it "stores the user's name" do
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

    # it "throws error if the user doesn't provide a valid argument" do
    #   my_game = described_class.new("susan")
    #   expect{my_game.user_turn()}.to raise_error
    # end

    it "assigns the user choice to an instance variable" do
      my_game.user_turn(:paper)
      expect(my_game.instance_variable_get(:@user_choice)).to eq(:paper)
    end
  end

  describe "#bot_turn" do
    it "randomly selects one of rock, paper or scissors" do
      expect(my_game.bot_turn()).to eq(:rock) | eq(:paper) | eq(:scissors)
    end

    it "assigns the bots choice to an instance variable" do
      my_game.bot_turn()
      expect(my_game.bot_choice).to eq(:rock) | eq(:paper) | eq(:scissors)
    end
  end

  describe "#declare_winner" do
    context "when the user wins" do
      before do
        my_game.instance_variable_set(:@user_choice, :rock)
        my_game.instance_variable_set(:@bot_choice, :scissors)
        my_game.declare_winner()
      end

      it "assigns the user's name to the winner instance variable" do
        expect(my_game.winner).to eq(my_game.name)
      end

      it "assigns 'the bot' to the loser instance variable" do
        expect(my_game.loser).to eq("the bot")
      end
    end

    context "when the bot wins" do
      before do
        my_game.instance_variable_set(:@user_choice, :paper)
        my_game.instance_variable_set(:@bot_choice, :scissors)
        my_game.declare_winner()
      end

      it "assigns 'the bot' to the winner instance variable" do
        expect(my_game.winner).to eq("the bot")
      end

      it "assigns the user's name to the loser instance variable" do
        expect(my_game.loser).to eq(my_game.name)
      end
    end

    context "when it's a draw" do
      before do
        my_game.instance_variable_set(:@user_choice, :rock)
        my_game.instance_variable_set(:@bot_choice, :rock)
        my_game.declare_winner()
      end

      it "sets the draw instance variable to true" do
        expect(my_game.draw).to eq(true)
      end
    end
  end
end