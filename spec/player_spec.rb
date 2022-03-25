require 'player'

RSpec.describe Player do
  subject(:ken) { Player.new("Ken") }

  describe 'name' do
    it 'returns players name' do
      expect(ken.name).to eq "Ken"
    end
  end

  describe 'move' do
    it 'returns the players move' do
      ken.choose_move("Rock")
      expect(ken.move).to eq "Rock"
    end
  end

end
