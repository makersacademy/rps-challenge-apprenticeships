require 'multiplayer'

RSpec.describe Multiplayer do
  it "constructs" do
    first_player = double :player
    allow(first_player).to receive(:name).and_return("Player 1")
    second_player = double :player
    allow(second_player).to receive(:name).and_return("Player 2")
    allow(first_player).to receive(:choice).and_return("Rock")
    allow(second_player).to receive(:choice).and_return("Paper")

    expect(first_player.name).to eq "Player 1"
    expect(second_player.name).to eq "Player 2"
  end

  context "it's a draw" do
    it "returns 'It's a draw!'" do
      first_player = double :player
      allow(first_player).to receive(:name).and_return("Player 1")
      second_player = double :player
      allow(second_player).to receive(:name).and_return("Player 2")
      allow(first_player).to receive(:choice).and_return("Rock")
      allow(second_player).to receive(:choice).and_return("Rock")
      
      new_game = Multiplayer.new(first_player, second_player)
      expect(new_game.play).to eq "It's a draw!"
    end
  end

  context "Player 1 wins" do
    it "returns 'Player 1 wins!'" do
      first_player = double :player
      allow(first_player).to receive(:name).and_return("Player 1")
      second_player = double :player
      allow(second_player).to receive(:name).and_return("Player 2")
      allow(first_player).to receive(:choice).and_return("Rock")
      allow(second_player).to receive(:choice).and_return("Scissors")
      
      new_game = Multiplayer.new(first_player, second_player)
      expect(new_game.play).to eq "Player 1 wins!"
    end
  end

  context "Player 2 wins" do
    it "returns 'Player 2 wins!'" do
      first_player = double :player
      allow(first_player).to receive(:name).and_return("Player 1")
      second_player = double :player
      allow(second_player).to receive(:name).and_return("Player 2")
      allow(first_player).to receive(:choice).and_return("Paper")
      allow(second_player).to receive(:choice).and_return("Scissors")
      
      new_game = Multiplayer.new(first_player, second_player)
      expect(new_game.play).to eq "Player 2 wins!"
    end
  end
end
