require './lib/game'

RSpec.describe Game do
  before(:example) do
    @game = Game.new
  end
  
  context "when passed identical actions" do
    it "declares a draw" do
      expect(@game.result("rock", "rock")).to eq "draw"
      expect(@game.result("paper", "paper")).to eq "draw"
      expect(@game.result("scissors", "scissors")).to eq "draw"
    end
  end

  context "when player action beats computer action" do
    it "declares a win" do
      expect(@game.result("rock", "scissors")).to eq "win"
      expect(@game.result("paper", "rock")).to eq "win"
      expect(@game.result("scissors", "paper")).to eq "win"
    end
  end

  context "when computer action beats player action" do
    it "declares a loss" do
      expect(@game.result("rock", "paper")).to eq "loss"
      expect(@game.result("paper", "scissors")).to eq "loss"
      expect(@game.result("scissors", "rock")).to eq "loss"
    end
  end
end
