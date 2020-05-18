require './lib/game'

RSpec.describe Game do
  let(:glen) { double :Glen }

  describe '#attack' do


    it 'retrieves the name' do
      game = Game.new(glen,'Rock')
      expect(game.name).to eq glen
    end

    it 'retrieves rock' do
      game = Game.new(glen,"Rock")
      expect(game.user_choice).to eq "Rock"
    end
    
  end
end