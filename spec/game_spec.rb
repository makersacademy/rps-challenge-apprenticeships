require 'game'

describe Game do
  let(:game) { Game.new(player, computer)}
  let(:computer) { double "computer"}
  let(:player) { double "player"}

  describe '#initialize' do
    it 'instantiates the game' do
      expect(game.player).to eq player
      expect(game.computer).to eq computer
    end
  end

  describe '#play' do
    context 'Player wins when' do
      it 'player chooses rock and computer scissors' do
        allow(player).to receive(:choice).and_return('Rock')
        allow(computer).to receive(:choice).and_return('Scissors')
        expect(game.play).to eq ("You won")
      end
      it'player chooses paper and computer rock' do
        allow(player).to receive(:choice).and_return('Paper')
        allow(computer).to receive(:choice).and_return('Rock')
        expect(game.play).to eq ("You won")
      end
      it'player chooses scissors and computer paper' do
        allow(player).to receive(:choice).and_return('Scissors')
        allow(computer).to receive(:choice).and_return('Paper')
        expect(game.play).to eq ("You won")
      end
    end
    context 'Player looses when' do 
      it 'Player chooses rock and computer paper' do 
        allow(player).to receive(:choice).and_return('Rock')
        allow(computer).to receive(:choice).and_return('Paper')
        expect(game.play).to eq ("You lost")
      end
      it 'Player chooses paper and computer scissors' do 
        allow(player).to receive(:choice).and_return('Paper')
        allow(computer).to receive(:choice).and_return('Scissors')
        expect(game.play).to eq ("You lost")
      end
      it 'Player chooses Scissors and computer Rock' do 
        allow(player).to receive(:choice).and_return('Scissors')
        allow(computer).to receive(:choice).and_return('Rock')
        expect(game.play).to eq ("You lost")
      end
    end
  end
end
