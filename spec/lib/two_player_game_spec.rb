require 'two_player_game'

describe TwoPlayerGame do
  let(:player1) { double :player, name: 'foo' }
  let(:player2) { double :player, name: 'bar' }
  before(:each) { @game = TwoPlayerGame.new(player1, player2) }

  describe "#initialize" do
    it 'can be passed two player objects' do
      expect(@game.player1.name).to eq 'foo'
      expect(@game.player2.name).to eq 'bar'
    end
  end

  describe "#player_choice" do
    it 'sets the specified player choice to the passed value' do
      allow(player1).to receive(:move).with('Scissors')
      @game.player_choice(player1, 'Scissors')
      allow(player1).to receive(:choice).and_return('Scissors')
      expect(@game.player1.choice).to eq 'Scissors'
    end
  end

  describe "#decide_winner" do
    it 'player 1 wins' do
      allow(player1).to receive(:move).with('Scissors')
      @game.player_choice(player1, 'Scissors')
      allow(player1).to receive(:choice).and_return('Scissors')
      
      allow(player2).to receive(:move).with('Paper')
      @game.player_choice(player2, 'Paper')
      allow(player2).to receive(:choice).and_return('Paper')

      expect(@game.decide_winner(player1.choice, player2.choice)).to eq 'Player 1'
    end
  end
end
