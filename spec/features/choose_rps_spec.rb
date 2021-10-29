feature 'Choose Rock, Paper or Scissors' do
  scenario 'Player chooses Rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Scott Chooses Rock!'
  end
end