require 'player'

describe Player do

  it 'returns the name of the player' do
    player_one = Player.new("Matt")
    expect(player_one.name).to eq "Matt"
  end

  it 'returns the selection of the player' do
    player_one = Player.new("Matt")
    player_one.picks("Rock")
    expect(player_one.selection).to eq "Rock"
  end
  
end