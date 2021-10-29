require 'game'
require 'player'

describe Game do
  it "should player2 choice nil should report error" do
    player1 = double('mock', :name => 'Mike', :choice => 'rock')
    subject = Game.new(player1, nil)

    expect { subject.play }.to raise_error 'Empty player 2'
  end
  it "should player1 choice nil should report error" do
    player2 = double('mock', :name => 'Mike', :choice => 'rock')
    subject = Game.new(nil, player2)

    expect { subject.play }.to raise_error 'Empty player 1'
  end
  it "should report error if choice is nil" do
    player2 = double('mock', :name => 'Jenaro', :choice => nil)
    player1 = double('mock', :name => 'Mike', :choice => 'rock')
    subject = Game.new(player1, player2)

    expect { subject.play }.to raise_error 'Empty choice player 2'
  end
  it "should report error if choice is nil" do
    player2 = double('mock', :name => 'Jenaro', :choice => 'paper')
    player1 = double('mock', :name => 'Mike', :choice => nil)
    subject = Game.new(player1, player2)

    expect { subject.play }.to raise_error 'Empty choice player 1'
  end
 end
