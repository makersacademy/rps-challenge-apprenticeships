require './lib/rps_game'

describe Game do
  it 'Lets you know who has won' do
    computer = double(:computer, randomize: 'Rock', win: 'Human wins')
    human = double(:human, initialize: 'Paper')
    expect(game.win('Rock', 'Paper')).to eq 'Player wins!'
  end
end
