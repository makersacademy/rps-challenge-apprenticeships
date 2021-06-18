require 'player'

describe Player do

  let(:player) { Player.new('Hannah') }

  it 'initializes with a name' do
    expect(player.name).to eq('Hannah')
  end

  it 'stores player choice' do
    player.make_choice("Rock")
    expect(player.choice).to eq("Rock")
  end

end