require "computer"

describe Computer do
  subject(:computer) { described_class.new }
  describe "#generate_choice" do
    it "returns 'Rock'" do
      allow(computer).to receive(:generate_choice).and_return "Rock"
      expect(computer.generate_choice).to eq "Rock"
    end

    it "returns 'Paper'" do
      allow(computer).to receive(:generate_choice).and_return "Paper"
      expect(computer.generate_choice).to eq "Paper"
    end

    it "returns 'Scissors'" do
      allow(computer).to receive(:generate_choice).and_return "Scissors"
      expect(computer.generate_choice).to eq "Scissors"
    end
  end
end
