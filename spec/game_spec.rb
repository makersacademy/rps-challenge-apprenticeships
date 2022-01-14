require 'game'

describe Game do
  let (:player_one) { double :player, name: "player_one" }
  let (:player_two) { double :player, name: "player_two" }

  let (:rock) { double :player, name: "rock", move: "Rock" }
  let (:paper) { double :player, name: "paper", move: "Paper" }
  let (:scissors) { double :player, name: "scissors", move: "Scissors" }

  subject { described_class.new(player_one, player_two, nil) }

  it { is_expected.to respond_to(:player_one) }
  it { is_expected.to respond_to(:player_two) }

  describe "#outcome" do
    it { is_expected.to respond_to(:outcome).with(2).argument }

    context "returns player_one when" do
      it "p1 = Rock and p2 = Scissors" do
        expect(subject.outcome(rock, scissors)).to eq rock
      end

      it "p1 = Paper and p2 = Rock" do
        expect(subject.outcome(paper, rock)).to eq paper
      end

      it "p1 = Scissors and p2 = Paper" do
        expect(subject.outcome(scissors, paper)).to eq scissors
      end
    end

    context "returns CPU wins when" do
      it "p1 = Rock and p2 = Paper" do
        expect(subject.outcome(rock, paper)).to eq paper
      end

      it "p1 = Paper and p2 = Scissors" do
        expect(subject.outcome(paper, scissors)).to eq scissors
      end

      it "p1 = Scissors and p2 = Rock" do
        expect(subject.outcome(scissors, rock)).to eq rock
      end
    end

    context "returns draw when" do
      it "p1 = Rock and p2 = Rock" do
        expect(subject.outcome(rock, rock)).to eq "Draw"
      end

      it "p1 = Paper and p2 = Paper" do
        expect(subject.outcome(paper, paper)).to eq "Draw"
      end

      it "p1 = Scissors and p2 = Scissors" do
        expect(subject.outcome(scissors, scissors)).to eq "Draw"
      end
    end
  end
end
