require 'game'

describe Game do
  let(:game) { described_class.new('Aladin') }

  it 'start a game' do
    expect(game.player1.name).to eq 'Aladin'
  end

  it 'takes the names' do
    described_class.start_game('Aladin')
    expect(described_class.instance.player1.name).to eq 'Aladin'
  end

  it 'has player 2 as a computer' do
    described_class.start_game('Aladin')
    expect(described_class.instance.player2.name).to eq 'Computer'
  end

end
