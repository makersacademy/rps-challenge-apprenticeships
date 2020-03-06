require 'player'

describe Player do
  subject(:player) { described_class.new('Aladin') }

  it 'keeps the player name' do
    expect(player.name).to eq 'Aladin'
  end


end
