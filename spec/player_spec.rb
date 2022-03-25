require 'player'

RSpec.describe Player do
  it 'returns the name' do
    player = Player.new('Charlotte')
    expect(player.name).to eq 'Charlotte'
  end
end