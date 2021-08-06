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
      click_button("scissors")
      expect(page).to have_content("Computer chose rock")

    end

    scenario "Player win is announced" do
      start_single_player_game(player1)
      click_button("paper")
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
      fill_in :player_1_choice, with: "roc"
      fill_in :player_2_choice, with: "pap"
      click_button("Submit")
      expect(page).to have_content "#{player1} chose rock, #{player2} chose paper"
    end

  end

  context "when playing either game mode" do
    # scenario "loser can propose best 2 out of 3"
  end

    scenario "user(s) can play RPS-Lizard-Spock" do

    end
end

feature "user(s) can play Rock-Paper-Scissors-Lizard-Spock" do
  let(:player1) { double("Player 1") }
  let(:player2) { double("Player 2") }

  scenario "scissors cuts paper" do
    start_multiplayer_game(player1, player2)
    fill_in :player_1_choice, with: "sci"
    fill_in :player_2_choice, with: "pap"
    click_button("Submit")
    expect(page).to have_content "#{player1} chose scissors, #{player2} chose paper"
  end

  scenario "paper covers rock" do
    start_multiplayer_game(player1, player2)
    fill_in :player_1_choice, with: "pap"
    fill_in :player_2_choice, with: "roc"
    click_button("Submit")
    expect(page).to have_content "#{player1} chose paper, #{player2} chose rock"
    expect(page).to have_content "#{player1} wins!"
  end

  scenario "rock crushes lizard" do
    start_multiplayer_game(player1, player2)
    fill_in :player_1_choice, with: "roc"
    fill_in :player_2_choice, with: "liz"
    click_button("Submit")
    expect(page).to have_content "#{player1} chose rock, #{player2} chose lizard"
    expect(page).to have_content "#{player1} wins!"
  end

  scenario "lizard poisons spock" do
    start_multiplayer_game(player1, player2)
    fill_in :player_1_choice, with: "liz"
    fill_in :player_2_choice, with: "spo"
    click_button("Submit")
    expect(page).to have_content "#{player1} chose lizard, #{player2} chose spock"
    expect(page).to have_content "#{player1} wins!"
  end

  scenario "spock smashes scissors" do
    start_multiplayer_game(player1, player2)
    fill_in :player_1_choice, with: "spo"
    fill_in :player_2_choice, with: "sci"
    click_button("Submit")
    expect(page).to have_content "#{player1} chose spock, #{player2} chose scissors"
    expect(page).to have_content "#{player1} wins!"
  end

  scenario "scissors decapitate lizard" do
    start_multiplayer_game(player1, player2)
    fill_in :player_1_choice, with: "sci"
    fill_in :player_2_choice, with: "liz"
    click_button("Submit")
    expect(page).to have_content "#{player1} chose scissors, #{player2} chose lizard"
    expect(page).to have_content "#{player1} wins!"
  end

  scenario "lizard eats paper" do
    start_multiplayer_game(player1, player2)
    fill_in :player_1_choice, with: "liz"
    fill_in :player_2_choice, with: "pap"
    click_button("Submit")
    expect(page).to have_content "#{player1} chose lizard, #{player2} chose paper"
  end

  scenario "paper disproves spock" do
    start_multiplayer_game(player1, player2)
    fill_in :player_1_choice, with: "pap"
    fill_in :player_2_choice, with: "spo"
    click_button("Submit")
    expect(page).to have_content "#{player1} chose paper, #{player2} chose spock"
    expect(page).to have_content "#{player1} wins!"
  end

  scenario "spock vaporizes rock" do
    start_multiplayer_game(player1, player2)
    fill_in :player_1_choice, with: "spo"
    fill_in :player_2_choice, with: "roc"
    click_button("Submit")
    expect(page).to have_content "#{player1} chose spock, #{player2} chose rock"
    expect(page).to have_content "#{player1} wins!"
  end

  scenario "rock crushes scissors" do
    start_multiplayer_game(player1, player2)
    fill_in :player_1_choice, with: "roc"
    fill_in :player_2_choice, with: "sci"
    click_button("Submit")
    expect(page).to have_content "#{player1} chose rock, #{player2} chose scissors"
    expect(page).to have_content "#{player1} wins!"
  end
end

feature "it provides context for the victory with an appropriate explanation message" do
  let(:player1) { double("Player 1") }
  let(:player2) { double("Player 2") }
  
  context "when lizard and spock are chosen" do
    scenario "lizard poisons spock" do
      start_multiplayer_game(player1, player2)
      fill_in :player_1_choice, with: "liz"
      fill_in :player_2_choice, with: "spo"
      click_button("Submit")
      expect(page).to have_content "lizard poisons spock"
    end
  end
end
