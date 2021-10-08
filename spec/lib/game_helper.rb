def configure_second_player_double(choice)
  allow(player2).to receive(:move).with(choice)
  @game.player_choice(player2, choice)
  allow(player2).to receive(:choice).and_return(choice)
end
