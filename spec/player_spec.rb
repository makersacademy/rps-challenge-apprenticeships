require 'player'

describe Player do

  let(:player) { Player.new('Hannah') }

  it 'initializes with a name' do
    expect(player.name).to eq('Hannah')
  end

end