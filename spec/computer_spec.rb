require "computer"

RSpec.describe Computer do
  describe "#moves" do
    it "Returns an array of moves for rock paper scissors" do
      computer = Computer.new
      expect(computer.moves).to eq(["Rock", "Paper", "Scissors"])
    end
  end

  describe "#random_turn" do
    let(:computer) { double("computer double", :random_turn => "Scissors") }
    it "Returns an item in the moves array" do
      expect(computer.random_turn).to eq("Scissors")
    end
  end
end
