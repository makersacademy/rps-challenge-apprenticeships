require 'game'

describe Game do
  let(:player) { double :player, name: 'foo', choice: 'Scissors' }
  before(:each) { @game = Game.new(player) }

  describe "#initialize" do
    it "can be passed a player object" do
      expect(@game.player.name).to eq 'foo'
    end
  end

  describe "#player_choice" do
    it "sets the players choice to what is passed" do
      allow(player).to receive(:move).with('Rock')
      allow(player).to receive(:choice) { 'Rock' }
      @game.player_choice('Rock')
      expect(@game.player.choice).to eq 'Rock'
    end
  end

  describe "#computer_choice" do
    it "returns either rock, paper or scissors" do
      expect(@game.computer_choice).to eq("Rock").or eq("Paper").or eq("Scissors")
    end
  end

  describe "#decide_winner" do
    it "player wins" do
      expect(@game).to receive(:computer_choice).and_return("Paper")
      expect(@game.decide_winner(player.choice, @game.computer_choice)).to eq "Player"
    end

    it "draw" do
      expect(@game).to receive(:computer_choice).and_return("Scissors")
      expect(@game.decide_winner(player.choice, @game.computer_choice)).to eq "Draw"
    end

    it "computer wins" do
      expect(@game).to receive(:computer_choice).and_return("Rock")
      expect(@game.decide_winner(player.choice, @game.computer_choice)).to eq "Computer"
    end
  end

  describe "#extended_computer_choice" do
    it "returns either rock, paper, scissors, lizard or spock" do
      expect(@game.extended_computer_choice).to eq("Rock").or eq("Paper").or eq("Scissors").or eq("Lizard").or eq("Spock")
    end
  end

  describe "#decide_extended_winner" do
    before(:each) { allow(player).to receive(:choice).and_return('Spock') }
    it "returns computer when computer wins" do
      expect(@game).to receive(:extended_computer_choice).and_return("Lizard")
      expect(@game.decide_extended_winner(player.choice, @game.extended_computer_choice)).to eq "Computer"
    end

    it "returns draw when draw" do
      expect(@game).to receive(:extended_computer_choice).and_return("Spock")
      expect(@game.decide_extended_winner(player.choice, @game.extended_computer_choice)).to eq "Draw"
    end

    it "returns player when player wins" do
      expect(@game).to receive(:extended_computer_choice).and_return("Rock")
      expect(@game.decide_extended_winner(player.choice, @game.extended_computer_choice)).to eq "Player"
    end
  end
end
