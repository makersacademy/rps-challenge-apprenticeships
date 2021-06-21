require './app/play'

describe PlayRPS do
  #Note: Seeding the randomizer so the computer will always pick paper for testing


it 'paper beats rock' do
  rps = PlayRPS.new('rock')
  rps.rand_seed = 1
  expect(rps.winner_is).to eq('Computer wins!')
end

it 'paper looses to scissors' do
  rps = PlayRPS.new('scissors')
  rps.rand_seed = 1
  expect(rps.winner_is).to eq('You win!')
end

it 'paper ties with paper' do
  rps = PlayRPS.new('paper')
  rps.rand_seed = 1
  expect(rps.winner_is).to eq('It is a tie!')
end

end