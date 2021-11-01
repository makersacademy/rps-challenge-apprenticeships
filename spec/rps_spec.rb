require_relative '../rps'


describe RPS do
  it 'rps should respond play' do
    expect(subject).to respond_to :play
  end

  it 'rps rock' do
    my_game=RPS.new
    allow(my_game).to receive(:random_choice).and_return(0)
    expect(my_game.play("Rock")).to eq(["rock",0])
  end
  it 'rps paper' do
    my_game=RPS.new
    allow(my_game).to receive(:random_choice).and_return(1)
    expect(my_game.play("Paper")).to eq(["paper",0])
  end
  it 'rps scissors' do
    my_game=RPS.new
    allow(my_game).to receive(:random_choice).and_return(2)
    expect(my_game.play("Scissors")).to eq(["scissors",0])
  end
end
