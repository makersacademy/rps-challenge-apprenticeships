require 'game_controller'

describe GameController do
  let(:player1) { double(name: "Bob") }
  let(:player2) { double(name: "Bill") }
  let(:player_class) { double :player_class }
  let(:subject) { GameController.new("Bob", "Bill", player_class) }
  before(:each) { allow(player_class).to receive(:new).and_return(player1, player2) }
  
  describe "#game_over?" do
    it "should return true if a player reaches the winning_score" do
      allow(player1).to receive(:score).and_return(3)
      subject.check_game_over
      expect(subject.game_over?).to eq true
    end
  end

  describe "#announce_winner" do
    it "tells us player 1 won when appropriate" do
      allow(player1).to receive(:score).and_return(3)
      allow(player2).to receive(:score).and_return(1)
      expect(subject.announce_winner).to eq "Bob wins the match! Congratulations!"
    end

    it "tells us player 2 won when appropriate" do
      allow(player1).to receive(:score).and_return(2)
      allow(player2).to receive(:score).and_return(3)
      expect(subject.announce_winner).to eq "Bill wins the match! Congratulations!"
    end
  end

  describe "#play_round" do
    before(:each) do
      allow(player1).to receive(:selection=)
      allow(player1).to receive(:selection)
      allow(player2).to receive(:selection=)
      allow(player2).to receive(:selection)
      allow(player1).to receive(:increment_score)
      allow(player2).to receive(:increment_score)
      allow(player1).to receive(:score)
      allow(player2).to receive(:score)
    end
    
    it "uses computer selection if only one selection is passed" do
      expect(subject).to receive(:computer_selection)
      subject.play_round("rock")
    end

    it "returns the correct response when player 1 wins a round" do
      allow(player1).to receive(:selection).and_return("rock")
      allow(player2).to receive(:selection).and_return("scissors")
      expect(subject.play_round("rock")).to eq "Bob chose rock, Bill chose scissors. Bob wins!"
    end

    it "returns the correct response when player 2 wins a round" do
      allow(player1).to receive(:selection).and_return("paper")
      allow(player2).to receive(:selection).and_return("scissors")
      expect(subject.play_round("rock")).to eq "Bob chose paper, Bill chose scissors. Bill wins!"
    end

    it "calls increment score on the winning player" do
      allow(player1).to receive(:selection).and_return("paper")
      allow(player2).to receive(:selection).and_return("scissors")
      expect(player2).to receive(:increment_score)
      subject.play_round("rock")
    end
  end
end
