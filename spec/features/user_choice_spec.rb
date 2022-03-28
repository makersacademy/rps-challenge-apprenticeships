feature 'User choice' do
  scenario 'user picks rock' do
    sign_in_and_play
    choose("rock")
    click_button 'Submit'
    expect(page).to have_content "Bella selected: ROCK"
  end
  scenario 'user picks paper' do
    sign_in_and_play
    choose("paper")
    click_button 'Submit'
    expect(page).to have_content "Bella selected: PAPER"
  end
  scenario 'user picks scissors' do
    sign_in_and_play
    choose("scissors")
    click_button 'Submit'
    expect(page).to have_content "Bella selected: SCISSORS"
  end
end
