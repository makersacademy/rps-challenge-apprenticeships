require 'game'

describe 'game' do
  it 'calculates who won the game' do
    expect(subject).to respond_to(:result).with(2).arguments
  end
end
