require 'player'

describe Player do
  before(:each) do
    @player_name = "Radagast"
    @player = Player.new(@player_name)
  end
  it 'initializes with a name' do 
    expect(@player.name).to eq @player_name
  end
  it 'stores the players last attack' do
    @attack = "Rock"
    @player.action(@attack)
    expect(@player.attack).to eq @attack
  end
end