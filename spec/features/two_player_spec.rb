require 'two_player_game'

feature "start game" do
  scenario "set the players choices" do
    player1 = Player.new('foo')
    player2 = Player.new('bar')
    game = TwoPlayerGame.new(player1, player2)

    game.player_choice(player1, 'Scissors')
    game.player_choice(player2, 'Paper')

    expect(game.player1.choice).to eq 'Scissors'
    expect(game.player2.choice).to eq 'Paper'
  end
end