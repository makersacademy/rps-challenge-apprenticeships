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
end