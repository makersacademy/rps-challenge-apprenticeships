RSpec.describe Player do
  it 'can create a player object' do
    player = Player.new("Joe")

    expect(player.class).to eq(Player)
  end
end