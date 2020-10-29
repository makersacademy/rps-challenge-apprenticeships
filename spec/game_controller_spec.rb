require 'game_controller'

describe GameController do
  let(:player1) { double(name: "Bob") }
  let(:player1) { double(name: "Bill") }
  let(:player_class) { double :player_class }
  allow(player_class).to receive(:new).and_return(player1, player2)
  let(:subject) { GameController.new("Bob", "Bill", player_class) }

  describe "#game_over?" do
    it "should return true if a player reaches the winning_score" do
      allow(player).to receive(:score).and_return(3)
      subject.check_game_over
      expect(subject.game_over?).to eq true
    end
  end

  describe "#play_round" do
    before(:each) do
      allow(player).to receive(:selection=)
      allow(player).to receive(:selection)
    end
    
    it "uses computer selection if only one selection is passed" do
      expect(subject).to receive(:computer_selection)
      subject.play_round("rock")
    end
  end
end