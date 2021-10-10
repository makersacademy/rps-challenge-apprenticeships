require "game"

RSpec.describe Game do
  it "can choose a random move" do
    expect(["rock", "paper", "scissors"]).to include subject.random_move
  end

  describe "#result" do
    it "is draw, when same signs" do
      expect(subject.result("rock", "rock")).to eq "rock vs. rock: it's a draw!"
      expect(subject.result("paper", "paper")).to eq "paper vs. paper: it's a draw!"
      expect(subject.result("scissors", "scissors")).to eq "scissors vs. scissors: it's a draw!"
    end

    it "rock beats scissors" do
      expect(subject.result("rock", "scissors")).to eq "rock vs. scissors: it's a win!"
      expect(subject.result("scissors", "rock")).to eq "scissors vs. rock: it's a loose!"
    end

    it "scissors beat paper" do
      expect(subject.result("scissors", "paper")).to eq "scissors vs. paper: it's a win!"
      expect(subject.result("paper", "scissors")).to eq "paper vs. scissors: it's a loose!"
    end

    it "paper beats rock" do
      expect(subject.result("paper", "rock")).to eq "paper vs. rock: it's a win!"
      expect(subject.result("rock", "paper")).to eq "rock vs. paper: it's a loose!"
    end
  end
end
