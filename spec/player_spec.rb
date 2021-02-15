require 'player'

RSpec.describe Player do
  let(:player) { Player.new('Vincenzo') }

  describe "#initialize" do
    it 'returns the players name' do
      expect(player.name).to eq("Vincenzo")
    end
  end
end