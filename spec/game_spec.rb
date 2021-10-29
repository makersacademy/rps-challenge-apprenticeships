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


end