require 'game'

describe Game do
  let(:player) { double :player, name: 'foo', choice: 'Scissors' }

  describe "#initialize" do
    it "can be passed a player object" do
      game = Game.new(player)
      expect(game.player.name).to eq 'foo'
    end
  end

  describe "#player_choice" do
    it "sets the players choice to what is passed" do
      game = Game.new(player)
      allow(player).to receive(:set_choice).with('Rock')
      allow(player).to receive(:choice) { 'Rock' }
      game.player_choice('Rock')
      expect(game.player.choice).to eq 'Rock'
    end
  end

  describe "#computer_choice" do
    it "returns either rock, paper or scissors" do
      game = Game.new(player)
      expect(game.computer_choice).to eq("Rock").or eq("Paper").or eq("Scissors")
    end
  end

  describe "#decide_winner" do
    it "decided the winner of the game" do
      game = Game.new(player)
      # expect(game).to receive(:computer_choice).and_return("Paper")
      expect(game.decide_winner(player.choice, "Paper")).to eq "Player"
    end
    
  end
end
