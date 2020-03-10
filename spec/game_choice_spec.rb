require 'game_choice'

describe 'Game' do
let (:game) { Game.new }
let (:computer) { Computer.new }

  it 'can create a new instance' do
    expect(game).to be_a_kind_of Game
  end

  it 'start method works' do
    expect(game).to respond_to(:start).with(1).argument
  end

  it 'can create an instance of Computer within Game class' do
    expect(["rock","paper","scissors"]).to include(computer.c_start)
  end

  it 'can redirect you to the results' do
    expect(game.start("scissors")).to include("Computer picked")
  end

  it 'can give the correct results (rock)' do
    srand 1234
    expect(game.start("rock")).to eq("Computer picked scissors. You win")
  end

  it 'can give the correct results (paper)' do
    srand 1235
    expect(game.start("paper")).to eq("Computer picked scissors. Computer wins")
  end

  it 'can give the correct results (scissors)' do
    srand 1236
    expect(game.start("scissors")).to eq("Computer picked paper. You win")
  end

  it 'can expect a draw' do
    srand 2345
    expect(game.start("rock")).to eq("Computer picked rock. It's a draw")
  end
end
