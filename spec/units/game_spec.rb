require 'game'
describe Game do
  it 'chooses a weapon for the computer' do
    game = Game.new
    expect(game.weapons).to receive(:sample)
    game.choose_weapon
  end

end
