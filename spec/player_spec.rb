require 'player'

describe Player do
  subject(:player_name) { Player.new("Anna") }

  it 'returns the name of the player' do
    expect(player_name.name).to eq "Anna"
  end
end
