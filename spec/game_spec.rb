require_relative '../app'

describe Game do
  let(:game) { described_class.new('kush') }

  it 'returns player ones name' do
    expect(game.player_one.name).to eq 'kush'
  end

  it 'stores player ones name as parameter' do
    described_class.start_game('kush')
    expect(described_class.instance.player_one.name).to eq 'kush'
  end

  it 'returns string if player two name not given' do
    described_class.start_game('kush')
    expect(described_class.instance.player_two.name).to eq 'Computer'
  end

  it 'returns players name when game started' do
    described_class.start_game('kush')

  end
end
