
feature 'Page has buttons to click' do
  PLAY_SEED = 12344

  before do
    register_and_play
  end

  scenario 'page has 3 buttons' do
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end

  scenario 'game to choose Rock' do
    click_button "Rock"
    message = find(:css, "#computer").text.strip
      def possible_messages
        [:Rock, :Paper, :Scissors].map { |move| "The computer chose #{move.to_s.capitalize}!"}
      end
    expect(possible_messages).to include message
  end

  scenario 'game chooses a random option' do
    srand(PLAY_SEED)
    click_button "Rock"
    expect(page).to have_content "The computer chose Scissors!"
  end

context 'end game' do
  before do
    srand(PLAY_SEED)
  end

  scenario 'I win' do
    click_button "Rock"
    expect(page).to have_content "You win!"
  end

  scenario 'I lose' do
    click_button "Paper"
    expect(page).to have_content "You lose!"
  end

  scenario 'I draw' do
    click_button "Scissors"
    expect(page).to have_content "You draw!"
  end

end

end
