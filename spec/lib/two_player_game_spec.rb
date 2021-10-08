require 'two_player_game'

describe TwoPlayerGame do
  let(:player1) { double :player, name: 'foo' }
  let(:player2) { double :player, name: 'bar' }

  describe "#initialize" do
    it 'can be passed two player objects' do
      game = TwoPlayerGame.new(player1, player2)
      expect(game.player1.name).to eq 'foo'
      expect(game.player2.name).to eq 'bar'
    end
  end

  describe "#player_choice" do
    it 'sets the specified player choice to the passed value' do
      game = TwoPlayerGame.new(player1, player2)
      allow(player1).to receive(:move).with('Scissors')
      game.player_choice(player1, 'Scissors')
      allow(player1).to receive(:choice).and_return('Scissors')
      expect(game.player1.choice).to eq 'Scissors'
    end
  end
end
