require "game"
require "weapon"

RSpec.describe Game do
  let(:player1) { double :player1 }
  let(:game) { Game.new(player1) }
  let(:weapon) { double :weapon, :generate => "rock" }

  describe "#player1" do
    it "shows a player1" do
      expect(game.player1).to eq player1
    end
  end

  describe "#create" do
    it "creates a class instance variable" do
      expect(Game.instance).to be_an_instance_of(Game)
    end
  end

  describe "#player2" do
    it "shows computer as player2" do
      expect(game.player2).to eq "Computer"
    end
  end

  describe "#opponent_choice" do
    it "shows computer selection of weapon" do
      expect(game.opponent_choice(weapon)).to eq("rock")
    end
  end
end
