require 'domain/game'

describe Game do
  let(:player_one) { double :player_one }
  let(:player_two) { double :player_two }
  let(:subject) { described_class.new("ABCDEF", player_one, player_two)}
  it 'has a game code' do
    expect(subject.game_code).to eq "ABCDEF"
  end

  it 'has two players linked to the game' do
    expect(subject.player_one).to eq player_one
    expect(subject.player_two).to eq player_two
  end
end