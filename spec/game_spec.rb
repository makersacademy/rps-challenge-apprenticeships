require 'game'

describe Game do
  let (:player_one) { double :player, name: "player_one" }
  let (:player_two) { double :player, name: "player_two" }

  let (:rock) { double :player, name: "rock", move: "Rock" }
  let (:paper) { double :player, name: "paper", move: "Paper" }
  let (:scissors) { double :player, name: "scissors", move: "Scissors" }

  subject { described_class.new(player_one) }

  it { is_expected.to respond_to(:player_one) }

  describe "#outcome" do
    it { is_expected.to respond_to(:outcome).with(1).argument }

    context "returns player_one when" do
      it "p1 = Rock and p2 = Scissors" do
        allow(subject).to receive(:cpu_move).and_return("Scissors")
        expect(subject.outcome(rock)).to eq rock
      end

      it "p1 = Paper and p2 = Rock" do
        allow(subject).to receive(:cpu_move).and_return("Rock")
        expect(subject.outcome(paper)).to eq paper
      end

      it "p1 = Scissors and p2 = Paper" do
        allow(subject).to receive(:cpu_move).and_return("Paper")
        expect(subject.outcome(scissors)).to eq scissors
      end
    end

    context "returns CPU wins when" do
      it "p1 = Rock and p2 = Paper" do
        allow(subject).to receive(:cpu_move).and_return("Paper")
        expect(subject.outcome(rock)).to eq "CPU"
      end

      it "p1 = Paper and p2 = Scissors" do
        allow(subject).to receive(:cpu_move).and_return("Scissors")
        expect(subject.outcome(paper)).to eq "CPU"
      end

      it "p1 = Scissors and p2 = Rock" do
        allow(subject).to receive(:cpu_move).and_return("Rock")
        expect(subject.outcome(scissors)).to eq "CPU"
      end
    end

    context "returns draw when" do
      it "p1 = Rock and p2 = Rock" do
        allow(subject).to receive(:cpu_move).and_return("Rock")
        expect(subject.outcome(rock)).to eq "Draw"
      end

      it "p1 = Paper and p2 = Paper" do
        allow(subject).to receive(:cpu_move).and_return("Paper")
        expect(subject.outcome(paper)).to eq "Draw"
      end

      it "p1 = Scissors and p2 = Scissors" do
        allow(subject).to receive(:cpu_move).and_return("Scissors")
        expect(subject.outcome(scissors)).to eq "Draw"
      end
    end
  end
end
