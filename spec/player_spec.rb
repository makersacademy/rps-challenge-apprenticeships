require 'player'

RSpec.describe Player do
  subject(:ken) { Player.new("Ken") }

  describe 'name' do
    it 'returns players name' do
      expect(ken.name).to eq "Ken"
    end
  end

end
