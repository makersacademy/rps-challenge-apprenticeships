require 'two_player_game'

feature "start game" do
  before(:each) do
    @player1 = Player.new('foo')
    @player2 = Player.new('bar')
    @game = TwoPlayerGame.new(@player1, @player2)
  end

  scenario "set the players choices" do
    @game.player_choice(@player1, 'Scissors')
    @game.player_choice(@player2, 'Paper')

    expect(@game.player1.choice).to eq 'Scissors'
    expect(@game.player2.choice).to eq 'Paper'
  end
end

feature "play game" do
  before(:each) do
    @player1 = Player.new('foo')
    @player2 = Player.new('bar')
    @game = TwoPlayerGame.new(@player1, @player2)
  end

  scenario "player 1 wins" do
    @game.player_choice(@player1, 'Scissors')
    @game.player_choice(@player2, 'Paper')

    expect(@game.decide_winner(@game.player1.choice, @game.player2.choice)).to eq 'Player 1'
  end

  scenario "player 2 wins" do
    @game.player_choice(@player1, 'Scissors')
    @game.player_choice(@player2, 'Rock')

    expect(@game.decide_winner(@game.player1.choice, @game.player2.choice)).to eq 'Player 2'
  end

  scenario "draw" do
    @game.player_choice(@player1, 'Scissors')
    @game.player_choice(@player2, 'Scissors')

    expect(@game.decide_winner(@game.player1.choice, @game.player2.choice)).to eq 'Draw'
  end
end
