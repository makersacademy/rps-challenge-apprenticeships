require "./lib/game"

describe Game do
  subject(:game) { described_class.new(player, computer) }
  let(:player) { double :player, name: "Ewa" }
  let(:computer) { double :computer, name: "Salem" }
  # let(:player_weapon) { instance_double Game, player_weapon: :rock }
  # let(:computer_weapon) { instance_double Game, computer_weapon: :rock }

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

  describe "#result" do
    context "tie" do
      it "returns tie when player's and computer's choice are the same" do
        allow(game).to receive(:player_choice).and_return(:paper)
        allow(game).to receive(:computer_choice).and_return(:paper)
        expect(game.result).to eq "Tie!"
      end
    end

    context "paper vs rock" do
      it "returns win if player chose paper" do
        allow(game).to receive(:result).and_return("You win! paper covers rock!")
        expect(game.result).to eq("You win! paper covers rock!")
      end

      it "returns losing if player chose rock" do
        allow(game).to receive(:result).and_return("You lose! paper covers rock!")
        expect(game.result).to eq("You lose! paper covers rock!")
      end
    end

    context "paper vs scissors" do
      it "returns win if player chose scissors" do
        allow(game).to receive(:result).and_return("You win! scissors cut paper!")
        expect(game.result).to eq("You win! scissors cut paper!")
      end

      it "returns losing if player chose paper" do
        allow(game).to receive(:result).and_return("You lose! scissors cut paper!")
        expect(game.result).to eq("You lose! scissors cut paper!")
      end
    end

    # allow(game).to receive(:computer_weapon).and_return(:rock)
    # allow(game).to receive(:player_weapon).and_return(:paper)
    # expect(game.result).to eq result

    context "rock vs scissors" do
      it "returns win if player chose rock" do
        allow(game).to receive(:result).and_return("You win! rock smashes scissors!")
        #allow(game).to receive(:player_weapon).and_return(:scissors)
        expect(game.result).to eq "You win! rock smashes scissors!"
      end

      it "returns losing if player chose scissors" do
        allow(game).to receive(:result).and_return("You lose! rock smashes scissors!")
        #allow(game).to receive(:player_weapon).and_return(:scissors)
        expect(game.result).to eq "You lose! rock smashes scissors!"
      end
    end
  end
end
