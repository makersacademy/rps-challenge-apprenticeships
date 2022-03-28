require 'game'

RSpec.describe Game do
  it 'retrieves the player' do
    fake_player = double(:fake_player)
    game = Game.new(fake_player)
    expect(game).to be
   end
 end