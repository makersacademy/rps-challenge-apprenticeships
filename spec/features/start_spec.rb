# feature "Starting the game" do
#   scenario "Start the first game" do
#     register_and_play
#     click_link 'START'
#     expect(page).to have_content "Dave, choose one of the options:"
#   end
# end


feature "playing a game" do
  SEED = 221563

  before do
    register_and_play
  end

  scenario "options presentation" do
    expect(page).to have_content "Rock"
    expect(page).to have_content "Paper"
    expect(page).to have_content "Scissors"
  end

  scenario "choose one option" do
    choose "rock"
    click_button "Submit"
    expect(page).to have_content "You chose rock"
  end

  scenario "computer chooses 'Paper' " do
    choose "paper"
    click_button "Submit"
    message = find(:css, "#opponent").text
    expect(possible_options).to include message
  end

  scenario "computer chooses a random option" do
    srand(SEED)
    choose "rock"
    click_button "Submit"
    expect(page).to have_content "The computer chose scissors!"
  end

  context "end game" do
    before do
      srand(SEED)
    end
  
    scenario "I win" do
      choose "rock"
      click_button "Submit"
      expect(page).to have_content "You win!"
    end

    scenario "I lose" do
      choose "paper"
      click_button "Submit"
      expect(page).to have_content "You lose!"
    end

    scenario "I draw" do
      choose "scissors"
      click_button "Submit"
      expect(page).to have_content "You draw!"
    end
  end


  def possible_options
    [:rock, :paper, :scissors].map { |option| "The computer chose #{option}!" }
  end
end
