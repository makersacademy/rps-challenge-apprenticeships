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

  # describe '#play' do
  #   context 'Player wins when' do
  #     it 'he chooses paper and computer rock' do
        
  #     end
  #   end
      
  #   end
  # end

end
