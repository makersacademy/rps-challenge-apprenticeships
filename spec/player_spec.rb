require 'player'

describe Player do
  let(:subject) { Player.new("Bob") }

  describe "#initialize" do
    it "should be initialized with a name set by passing an argument" do
      expect(subject.name).to eq "Bob"
    end

    it "should be initilialized with a score of 0" do
      expect(subject.score).to eq 0
    end
  end

  describe "#increment_score" do
    it "should increase the players score by 1" do
      expect { subject.increment_score }.to change { subject.score }.by(1)
    end
  end
end
