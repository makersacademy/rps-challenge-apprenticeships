feature 'Player enters name' do
  scenario 'player fills in form with name and clicks submit' do
    sign_in_and_play
    expect(page).to have_content 'Tommy vs. Computer'
  end
end