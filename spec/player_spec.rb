require 'player'

describe Player do

  subject(:player) { described_class.new('Quincy') }

  it 'stores players name' do
    expect(player.name).to eq 'Quincy'
  end

  it 'stores a weapon which is defaulted to nil at instantiation' do
    expect(player.weapon).to eq nil
  end
end