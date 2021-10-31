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
  it "should draw if same choice" do
    player2 = double('mock', :name => 'Jenaro', :choice => 'paper')
    player1 = double('mock', :name => 'Mike', :choice => 'paper')
    subject = Game.new(player1, player2)

    expect(subject.play).to eq "draw"
  end
  it "should report error if choice is not listed for player 1" do
    player2 = double('mock', :name => 'Jenaro', :choice => 'paper')
    player1 = double('mock', :name => 'Mike', :choice => 'poo')
    subject = Game.new(player1, player2)

    expect { subject.play }.to raise_error 'Invalid option for choice for player 1'
  end
  it "should report error if choice is not listed for player 2" do
    player2 = double('mock', :name => 'Jenaro', :choice => 'poo')
    player1 = double('mock', :name => 'Mike', :choice => 'rock')
    subject = Game.new(player1, player2)

    expect { subject.play }.to raise_error 'Invalid option for choice for player 2'
  end
  it "should player1 win with rock if other is scissors" do
    player2 = double('mock', :name => 'Jenaro', :choice => 'scissors')
    player1 = double('mock', :name => 'Mike', :choice => 'rock')
    subject = Game.new(player1, player2)

    expect(subject.play).to eq "Mike wins"
  end
  it "should player2 win with rock and other is scissors" do
    player2 = double('mock', :name => 'Jenaro', :choice => 'rock')
    player1 = double('mock', :name => 'Mike', :choice => 'scissors')
    subject = Game.new(player1, player2)

    expect(subject.play).to eq "Jenaro wins"
  end
  it "should player2 win with rock if other is scissors" do
    player2 = double('mock', :name => 'Jenaro', :choice => 'paper')
    player1 = double('mock', :name => 'Mike', :choice => 'rock')
    subject = Game.new(player1, player2)

    expect(subject.play).to eq "Jenaro wins"
  end
  it "should player1 win with rock if other is scissors" do
    player1 = double('mock', :name => 'Jenaro', :choice => 'paper')
    player2 = double('mock', :name => 'Mike', :choice => 'rock')
    subject = Game.new(player1, player2)

    expect(subject.play).to eq "Jenaro wins"
  end
  it "should player1 win with rock if other is scissors" do
    player2 = double('mock', :name => 'Jenaro', :choice => 'paper')
    player1 = double('mock', :name => 'Mike', :choice => 'scissors')
    subject = Game.new(player1, player2)

    expect(subject.play).to eq "Mike wins"
  end
  it "should player2 win with rock if other is scissors" do
    player1 = double('mock', :name => 'Jenaro', :choice => 'paper')
    player2 = double('mock', :name => 'Mike', :choice => 'scissors')
    subject = Game.new(player1, player2)

    expect(subject.play).to eq "Mike wins"
  end
  it "initial status should be make a choice" do
    player1 = double('mock', :name => 'Jenaro', :choice => 'paper')
    player2 = double('mock', :name => 'Mike', :choice => 'scissors')
    subject = Game.new(player1, player2)

    expect(subject.status).to eq Game::STATUSSES[:make_choice]
  end
  it "submit choice should make choice to wait" do
    player1 = double('mock', :name => 'Jenaro', :choice => 'paper')
    player2 = double('mock', :name => 'Mike', :choice => 'scissors')
    subject = Game.new(player1, player2)
    subject.submit_choice

    expect(subject.status).to eq Game::STATUSSES[:waiting]
  end
end
