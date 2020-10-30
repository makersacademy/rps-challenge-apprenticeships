describe "game page", type: :feature do
  context "single player" do
    before(:each) do
      enter_name
      
    end

    it "should initially display the intro message" do
      expect(page).to have_content("Make your selection to begin the game! Try to defeat the computer!")
    end

    it "should report the players selection and result after clicking a button" do
      srand(123)
      click_button('Rock')
      expect(page).to have_content("Bob chose rock, Skynet chose scissors. Bob wins!")
    end

    it "should report the players selection and result after clicking a button" do
      srand(124)
      click_button('Rock')
      expect(page).to have_content("Bob chose rock, Skynet chose spock. Skynet wins!")
    end
  end

  context "two player" do
    before(:each) do
      enter_names
    end

    it "should initially display the intro message" do
      expect(page).to have_content("Look away while player 1 makes their selection!")
    end

    it "message should change after first selection" do
      click_button("Rock")
      expect(page).to have_content("Now Bill make your selection")
    end

    it "should display correct message when round is drawn" do
      drawn_round
      expect(page).to have_content("It's a draw! Try again.")
    end

    it "shouldn't change scores when round is drawn" do
      drawn_round
      expect(page).to have_content("Score: 0").twice
    end

    it "should display correct message when player 1 wins" do
      player1_wins_round
      expect(page).to have_content("Bob chose rock, Bill chose scissors. Bob wins!")
    end

    it "should increase player 1's score when they win" do
      player1_wins_round
      expect(page).to have_content("Player 1: Bob\nScore: 1\n")

    end

    it "should display correct message when player 2 wins" do
      player2_wins_round
      expect(page).to have_content("Bob chose rock, Bill chose paper. Bill wins!")
    end

    it "should increase player 2's score when they win" do
      player2_wins_round
      expect(page).to have_content("Player 2: Bill\nScore: 1\n")
    end

    it "should display correct message when player 1 wins match" do
      player1_wins_match
      expect(page).to have_content("Bob wins the match! Congratulations!")
    end

    it "should display correct message when player 2 wins match" do
      player2_wins_match
      expect(page).to have_content("Bill wins the match! Congratulations!")
    end
  end
end
