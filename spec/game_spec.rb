require './lib/game'

RSpec.describe Game do
  let(:glen) { double :Glen }
  let(:rock) { double :rock }

  describe '#attack' do


    it 'retrieves the name' do
      game = Game.new(glen,rock)
      expect(game.name).to eq glen
    end

    it 'retrieves rock' do
      game = Game.new(glen,rock)
      expect(game.choice).to eq rock
    end
    
  end
end