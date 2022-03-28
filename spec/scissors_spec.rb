require "scissors"

describe Scissors do
  subject(:scissors) { Scissors.new }

  describe "#name" do
    it "returns the weapon name" do
      expect(scissors.name).to eq("Scissors")
    end
  end

  describe "#challenge" do
    it "accepts an opponent and generates a result" do
      scissors.challenge("Rock")
      expect(scissors.loser).to eq(true)
      scissors.challenge("Paper")
      expect(scissors.winner).to eq(true)
      scissors.challenge("Scissors")
      expect(scissors.draw).to eq(true)
    end
  end

end