require 'player'

describe Player do
  subject(:player) { described_class.new('Starbuck') }

  it 'saves player name' do
    expect(player.name).to eq 'Starbuck'
  end

  it 'checks that weapon default is nil' do
    expect(player.weapon).to eq nil
  end

end