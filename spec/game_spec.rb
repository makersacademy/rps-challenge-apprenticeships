require 'game'

describe Game do
  let(:game1) { Game.new("Rock", "Paper") }
  it 'generates decision' do
    expect(game1.decisionengine).to eq 'The result is: Sorry you lost!'
  end
end
