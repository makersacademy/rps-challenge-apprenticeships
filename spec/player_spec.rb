require "player"

describe Player do
  describe '#name' do
    it "stores the player name after initializing" do
      subject = described_class.new("Ben")
      expect(subject.name).to eq "Ben"
    end
  end
end
