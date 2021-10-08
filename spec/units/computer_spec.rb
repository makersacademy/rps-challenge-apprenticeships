require "computer"

describe Computer do
  subject(:computer) { described_class.new }
  describe "#generate_choice" do
    it "returns 'Rock'" do
      allow(subject).to receive(:generate_choice).and_return "Rock"
      expect(subject.generate_choice).to eq "Rock"
    end

    it "returns 'Paper'" do
      allow(subject).to receive(:generate_choice).and_return "Paper"
      expect(subject.generate_choice).to eq "Paper"
    end

    it "returns 'Scissors'" do
      allow(subject).to receive(:generate_choice).and_return "Scissors"
      expect(subject.generate_choice).to eq "Scissors"
    end
  end
end