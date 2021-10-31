require 'player'

describe Player do
  let(:player) { Player.new('John Wick', 'Rock')}

  it 'instantiates a new player' do
    expect(player.name).to eq 'John Wick'
  end
  it 'saves player choice' do
    expect(player.choice).to eq 'Rock'
  end
end