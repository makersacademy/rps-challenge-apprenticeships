require 'game'

describe Game do

  subject(:game) { described_class.new(player) }
  let(:player) { double :player }

  it 'knows whos playing' do
    expect(game.players).to include(player)
  end

  it { is_expected.to respond_to(:winner?).with(1).argument }

end
