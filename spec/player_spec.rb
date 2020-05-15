describe Player do
  it 'initializes with player choice' do
    player = Player.new('scissors')
    expect(player.choice).to eq 'scissors'
  end 
end
