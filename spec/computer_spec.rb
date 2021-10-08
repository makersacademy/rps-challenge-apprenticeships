require "computer"

RSpec.describe Computer do
  describe "#moves" do
    it "returns an array of moves for rock paper scissors" do
      computer = Computer.new
      expect(computer.moves).to eq(["Rock", "Paper", "Scissors"])
    end
  end
end
