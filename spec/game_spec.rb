require 'game'
describe Game do
  let(:game) { Game.new(player1, move) }
  let(:player1) { double :Chris }
  let(:move) { double :Rock }
  let(:moves) { double :RockScissors }
    
  it 'can intialise variables for player name and move ' do
    expect(game.player1).to eq(player1)
    expect(game.moves).to eq(move)
  end

  it 'can generate a random result for player 2' do
    game2 = double("game", :random_turn => "Scissors")
    expect(game2.random_turn).to eq("Scissors")
            
  end

  it 'can concatenate player 1 and player 2 results' do
    game = Game.new("Chris", "Rock")
    game.random_turn
    gametocheck = game.concat
    expect(p gametocheck.length).to be > 4
  end
  
  it 'can check if player1 has has won' do
    game2 = double("game", :player1 => "Chris", :random_turn => "Paper",
           :moves => "Rock", :concat => "RockPaper", :process_player_inputs => "Win")
    
    expect(game2.concat).to eq("RockPaper")
    expect(game2.process_player_inputs).to eq("Win")
  end

end
