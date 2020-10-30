require_relative  '../lib/player'

describe Player do
  subject { described_class.new("Name") }

  describe ".name" do
    it "returns name of a player" do
      expect(subject.name).to eq "Name"
    end
  end

  describe ".receive_figure" do
    it "sets players choice of figure to play" do
      expect { subject.receive_figure("rock")}.to change { subject.figure}.to("rock")
    end
  end
end
