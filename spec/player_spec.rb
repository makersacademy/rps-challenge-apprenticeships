require_relative '../app'

describe Player do
  subject(:player) { described_class.new('kush') }

  it 'stores player name' do
    expect(player.name).to eq 'kush'
  end

  it 'stores players move' do
    player.make_move('Rock')
    expect(player.move).to eq 'Rock'
  end
end
