require_relative  '../lib/game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }
  it { is_expected.to respond_to(:player1_status) }

  describe "#choice_of_player1" do
    it "chooses a figure" do
      expect(player1).to receive(:receive_figure).with("lizard")
      subject.choice_of_player1("lizard")
    end
  end

  describe "#choice_of_player2" do
    it "chooses a figure" do
      expect(player2).to receive(:receive_figure).with("lizard")
      subject.choice_of_player2("lizard")
    end
    it "chooses at random if no choice given" do
      expect(player2).to receive(:receive_figure)
      subject.choice_of_player2()
    end
  end
  describe "self. classes" do
    it "#set_a_game creates new game" do
      expect(Game.set_a_game("John", "Ron")).to be_a Game
    end
    it ".instance_of_game stores created game" do
      game = Game.set_a_game("John", "Ron")
      expect(Game.instance_of_game).to eq game
    end
  end

  describe "#player1_status" do
    it "decides a draw after a game" do
      allow(player1).to receive(:figure).and_return("lizard")
      allow(player2).to receive(:figure).and_return("lizard")
      expect(subject.player1_status).to eq("tied")
    end
    it "decides a wining situation for player1 after a game" do
      allow(player1).to receive(:figure).and_return("lizard")
      allow(player2).to receive(:figure).and_return("spock")
      expect(subject.player1_status).to eq("won")
    end
    it "decides a losing situation for player1 after a game" do
      allow(player1).to receive(:figure).and_return("rock")
      allow(player2).to receive(:figure).and_return("paper")
      expect(subject.player1_status).to eq("lost")
    end
  end
end
