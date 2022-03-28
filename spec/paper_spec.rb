require "paper"

describe Paper do
  subject(:paper) { Paper.new }

  describe "#name" do
    it "returns the weapon name" do
      expect(paper.name).to eq("Paper")
    end
  end

  describe "#challenge" do
    it "accepts an opponent and generates a result" do
      paper.challenge("Rock")
      expect(paper.winner).to eq(true)
      paper.challenge("Paper")
      expect(paper.draw).to eq(true)
      paper.challenge("Scissors")
      expect(paper.loser).to eq(true)
    end
  end

end