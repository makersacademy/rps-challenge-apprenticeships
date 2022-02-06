require 'winner'

describe Winner do
  
  it 'calculates winner' do
    @battle = Winner.new("Rock", "Rock")
    expect(@battle.won).to eq "It is a draw!"
  end

end
