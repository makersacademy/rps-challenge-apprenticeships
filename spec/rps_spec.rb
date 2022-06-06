require 'rps'

describe 'rock-paper-scissors calculator' do

  it('identifies when player 1 wins') {
    expect(RockPaperScissors.find_winner('ROCK', 'SCISSORS')).to eq 1
    expect(RockPaperScissors.find_winner('PAPER', 'ROCK')).to eq 1
    expect(RockPaperScissors.find_winner('SCISSORS', 'PAPER')).to eq 1
  }

  it('identifies when player 2 wins') {
    expect(RockPaperScissors.find_winner('ROCK', 'PAPER')).to eq 2
    expect(RockPaperScissors.find_winner('PAPER', 'SCISSORS')).to eq 2
    expect(RockPaperScissors.find_winner('SCISSORS', 'ROCK')).to eq 2
  }

  it('correctly handles draws') {
    expect(RockPaperScissors.find_winner('ROCK', 'ROCK')).to eq 0
    expect(RockPaperScissors.find_winner('PAPER', 'PAPER')).to eq 0
    expect(RockPaperScissors.find_winner('SCISSORS', 'SCISSORS')).to eq 0
  }

  it('throws when an invalid input is given') {
    expect {RockPaperScissors.find_winner('invalid', 'invalid') }.to raise_error ArgumentError
  }

  it('gives a correct set of allowed moves') {
    expect(RockPaperScissors.allowed_guesses).to eq %w[ROCK PAPER SCISSORS]
  }
end
