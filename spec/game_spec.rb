require 'game'

describe Game do

  let(:game) { described_class.new(player) }

  let(:player) { double :player }

  describe '#initialization' do
    it 'retrieves the player' do
      expect(game.player).to eq player
    end
  end 


end