# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature "a user can play a game of rock/paper/scissors" do
  let(:player1) { double("Player 1") }
  let(:player2) { double("Player 2") }
  # let(:computer_choice) { double(["Rock", "Paper", "Scissors"]) }

  scenario "a user can select a single player game mode" do
    load_single_player_game(player1)
    expect(page).to have_content "#{player1} vs "
  end

  context "when playing a single player game" do

    scenario "the user can select rock, paper or scissors" do
      start_single_player_game(player1)
      expect(page).to have_button("rock")
      expect(page).to have_button("paper")
      expect(page).to have_button("scissors")
    end

    scenario "the computer makes a move" do
      start_single_player_game(player1)
      click_button("rock")
      expect(page).to have_content("Computer chose paper")

    end

    scenario "Player win is announced" do
      start_single_player_game(player1)
      click_button("scissors")
      expect(page).to have_content("#{player1} wins!")
    end

  end

  context "when playing a Multiplayer game" do
    scenario 'two users can enter their names respectively' do
      load_multiplayer_game(player1, player2)
      expect(page).to have_content "#{player1} vs #{player2}"
    end

    scenario 'two users can select moves' do
      start_multiplayer_game(player1, player2)
      # within('move-select') do
        fill_in :player_1_choice, with: "roc"
        fill_in :player_2_choice, with: "pap"
        click_button("Submit")
      # end

      expect(page).to have_content "#{player1} chose rock, #{player2} chose paper"
    end
  end

  context "when playing either game mode" do
    # scenario "loser can propose best 2 out of 3"
  end
end
