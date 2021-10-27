feature 'Player enters name' do
  scenario 'player fills in form with name and clicks submit' do
    sign_in_play_and_choose_rock
    expect(page).to have_content 'Tommy played Rock'
  end
end