require "player"

describe Player do
  describe '#name' do
    it "stores the player name after initializing" do
      subject = described_class.new("Ben")
      expect(subject.name).to eq "Ben"
    end
  end

  describe 'pick' do
    it 'stores or returns the players pick' do
      subject = described_class.new("Ben")
      expect(subject).to respond_to(:pick)
    end
  end
end
