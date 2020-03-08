require 'game_choice'

describe 'Game' do
let (:game) { Game.new }
let (:computer) { Computer.new }
  it 'can create a new instance' do
    expect(game).to be_a_kind_of Game
  end

  it 'start method works' do
    expect(game).to respond_to(:start)
end

  it 'start can print out statements' do
    choice = "rock"
    expect(["rock","paper","scissors"]).to include(computer.c_start)

  end
end
