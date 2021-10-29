require 'game'

describe Game do

  let(:game) { described_class.new(player, computer) }

  let(:player) { double :player }
  let(:computer) { double :computer}

  describe '#initialization' do
    it 'retrieves the player' do
      expect(game.player).to eq player
    end

    it 'retrieves the computer' do
      expect(game.computer).to eq computer
    end
  end

  describe '#result' do

    context 'when player chooses rock' do

      it 'returns "draw" if computer also chooses rock' do
        expect(game.result('Rock', 'Rock')).to eq 'draw'
      end

      it 'returns "win" if computer chooses scissors' do
        expect(game.result('Rock', 'Scissors')).to eq 'win'
      end

      it 'returns "lose" if computer chooses paper' do
        expect(game.result('Rock', 'Paper')).to eq 'lose'
      end
    end
  end


end