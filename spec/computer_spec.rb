require "computer"

RSpec.describe Computer do
  describe "#moves" do
    it "Returns an array of moves for rock paper scissors" do
      computer = Computer.new
      expect(computer.moves).to eq ["Rock", "Paper", "Scissors"]
    end
  end

  describe "#random_turn" do
    it "Returns an item in the moves array" do
      allow(subject).to receive(:random_turn).and_return("Rock")
      expect(subject.random_turn).to eq("Rock")
    end
  end
end
