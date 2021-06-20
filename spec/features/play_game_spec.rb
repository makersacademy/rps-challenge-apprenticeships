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
    scenario 'two users can play together' do
      visit('/')
      select("2", from: "Mode")
      click_button("Select")
      fill_in :p1_name, with: "Red"
      fill_in :p2_name, with: "Blue"
      click_button("Start")
      expect(page).to have_content "Red vs Blue"
    end
  end

  context "when playing either game mode" do
    # scenario "loser can propose best 2 out of 3"
  end
end
