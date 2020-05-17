require 'player.rb'

RSpec.describe Player do
  subject(:kabir) { Player.new('Kabir') }

  it 'returns player name' do
    expect(kabir.player_name).to eq "Kabir"
  end
end
