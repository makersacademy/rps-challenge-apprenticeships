require "game"

describe Game do
  subject(:game) { Game.new("Rock") }
  let(:weapon) { double(:weapon, winner: false, loser: false, draw: false) }

  describe "#weapon" do
    it "returns the user's chosen weapon" do
      expect(game.weapon).to be_an_instance_of(Rock)
    end
  end

  describe "#opponent" do
    it "returns the opponent's weapon" do
      weapons = ["Rock", "Paper", "Scissors"]
      expect(weapons).to include(game.opponent)
    end
  end

end
