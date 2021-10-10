require "game"

RSpec.describe Game do
  let(:player1) { double :player1 }
  let(:game) { Game.new(player1) }

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
end
