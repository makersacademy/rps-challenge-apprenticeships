require 'player'

describe Player do
  subject(:player) { described_class.new('Starbuck') }

  it 'saves player name' do
    expect(player.name).to eq 'Starbuck'
  end
  
end