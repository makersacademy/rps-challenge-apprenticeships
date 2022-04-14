require 'game'

RSpec.describe 'Game' do 
  it 'returns the users answer' do
    game = Game.new("Rock")
    expect(game.player).to eq "Rock"
  end
end 
