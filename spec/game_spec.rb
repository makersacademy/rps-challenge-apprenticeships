require './app'

describe Game do
  let(:player) {Player.new('Nora')}
  subject(:game) {Game.new(player)}
  it "can return it's player" do
    expect(game.player).to eq player
  end

  it "can choose an option" do
    allow(game).to receive(:game_choice).and_return("Rock")
    expect(game.game_choice).to eq "Rock"
  end
end