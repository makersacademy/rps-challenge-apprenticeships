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

  context "player chooses scissors" do
    before(:each) do
      allow(player1).to receive(:move).with('Scissors')
      @game.player_choice(player1, 'Scissors')
      allow(player1).to receive(:choice).and_return('Scissors')
    end

    describe "#player_choice" do
      it 'sets the specified player choice to the passed value' do
        expect(@game.player1.choice).to eq 'Scissors'
      end
    end
  
    describe "#decide_winner" do
      it 'player 1 wins' do
        configure_second_player_double('Paper')
        expect(@game.decide_winner(player1.choice, player2.choice)).to eq 'Player 1'
      end
  
      it 'player 2 wins' do
        configure_second_player_double('Rock')
        expect(@game.decide_winner(player1.choice, player2.choice)).to eq 'Player 2'
      end
  
      it 'draw' do
        configure_second_player_double('Scissors')
        expect(@game.decide_winner(player1.choice, player2.choice)).to eq 'Draw'
      end
    end
  end
end
