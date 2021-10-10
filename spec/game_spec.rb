require "./lib/game"

describe Game do
  subject(:game) { described_class.new(player, computer) }
  let(:player) { double :player, name: "Ewa" }
  let(:computer) { double :computer, name: "Salem" }

  describe "#initialize" do
    it "returns the player name" do
      expect(game.player).to eq "Ewa"
    end

    it "returns the computer name" do
      expect(game.computer).to eq "Salem"
    end
  end

  describe "#player_choice" do
    it "returns player's choice of weapon" do
      allow(game).to receive(:player_choice).and_return(:paper)
      expect(game.player_choice).to eq :paper
    end
  end

  describe "#computer_choice" do
    it "returns computer's choice of weapon" do
      allow(game).to receive(:computer_choice) { :rock }
      expect(game.computer_choice).to eq :rock
    end
  end

  describe "#outcome" do
    context "tie" do
      it "returns tie when player's and computer's choice are the same" do
        allow(game).to receive(:outcome).and_return("Tie!")
        game.tie
        expect(game.outcome).to eq "Tie!"
      end
    end

    context "win" do
      it "returns win for the player" do
        allow(game).to receive(:outcome).and_return("You win!")
        game.win
        expect(game.outcome).to eq "You win!"
      end
    end

    context "lost" do
      it "returns lost of the player" do
        allow(game).to receive(:outcome).and_return("You lose!")
        game.lose
        expect(game.outcome).to eq "You lose!"
      end
    end
  end
end
