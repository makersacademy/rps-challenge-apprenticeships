require_relative  '../lib/game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }

  describe "#choice_of_player1" do
    it "chooses an element of Game::RULES" do
      allow(player1).to receive(:receive_figure).and_return(Game::SPOCK)
      expect(subject.choice_of_player1("spock")).to eq(Game::SPOCK)
    end
  end

  describe "#choice_of_player2" do
    it "chooses a value of hash that was selected by a player1" do
      allow(player1).to receive(:figure).and_return(Game::SPOCK)
      expect(player2).to receive(:receive_figure).with("lose")
      subject.choice_of_player2("lizard")
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

end
