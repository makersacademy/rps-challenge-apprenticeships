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
      expect(page).to have_button("Rock")
      expect(page).to have_button("Paper")
      expect(page).to have_button("Scissors")
    end

    scenario "the computer makes a move" do
      start_single_player_game(player1)
      click_button("Rock")
      expect(page).to have_content("Computer chose scissors")

    end

    scenario "Player win is announced" do
      srand(4)
      start_single_player_game(player1)
      click_button("Rock")
      expect(page).to have_content("#{player1} wins!")
    end

  end

  context "when playing a Multiplayer game" do

  end

  context "when playing either game mode" do
    # scenario "loser can propose best 2 out of 3"
  end
end
