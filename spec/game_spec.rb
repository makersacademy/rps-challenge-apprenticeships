require 'game'
describe Game do
  it "should player2 choice nil should report error" do
    player1 = double('mock', :name => 'Jenaro')

    expect { subject.play(player1, nil) }.to raise_error 'Empty player 2 choice'
  end
  it "should player1 choice nil should report error" do
    player2 = double('mock', :name => 'Jenaro')

    expect { subject.play(nil, player2) }.to raise_error 'Empty player 1 choice'
  end

end
