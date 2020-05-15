require 'game'

RSpec.describe Game do
  it 'can create a game object' do
    game = Game.new

    expect(game.class).to eq(Game)
  end

  it 'can randomly select a choice for the computer' do
    game = Game.new
    
    expect(["rock", "paper", "scissors"]).to include(game.generate_computer_choice)
  end

  it 'can return the result when the user wins' do
    game = Game.new
    choice = "rock"
    
    allow(game).to receive(:generate_computer_choice).and_return('scissors')
    computer_choice = game.generate_computer_choice

    expect(game.play(choice,computer_choice)).to eq("You win!")
  end

  it 'can return the result when the player loses' do
    game = Game.new
    choice = "rock"
    
    allow(game).to receive(:generate_computer_choice).and_return('paper')
    computer_choice = game.generate_computer_choice

    expect(game.play(choice,computer_choice)).to eq("You lose!")
  end
end