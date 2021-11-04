require_relative '../rps'

describe RPS do

  before(:each) do
    @my_game = RPS.new
  end

  it 'rps should respond play' do
    expect(@my_game).to respond_to :play
  end

  it 'rps returns array' do
    # my_game=RPS.new
    expect(@my_game.play("Scissors")).to be_an(Array)
  end

  it 'rps returns rock draw' do

    allow(@my_game).to receive(:rand).and_return(0)
    expect(@my_game.play("Rock")).to eq(["rock",0])
  end

  it 'rps returns paper draw' do
    allow(@my_game).to receive(:rand).and_return(1)
    expect(@my_game.play("Paper")).to eq(["paper",0])
  end

  it 'rps returns scissor draw' do
    allow(@my_game).to receive(:rand).and_return(2)
    expect(@my_game.play("Scissors")).to eq(["scissors",0])
  end

  it 'rps rock vs scissor win' do
    allow(@my_game).to receive(:rand).and_return(2)
    expect(@my_game.play("Rock")).to eq(["scissors",2])
  end

  it 'rps rock vs paper loss' do
    allow(@my_game).to receive(:rand).and_return(1)
    expect(@my_game.play("Rock")).to eq(["paper",1])
  end

  it 'rps paper vs scissor win' do
    allow(@my_game).to receive(:rand).and_return(2)
    expect(@my_game.play("Paper")).to eq(["scissors",1])
  end

end
