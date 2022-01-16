feature 'User clicks on their RPS move' do
  scenario 'User clicks on Rock, Paper or Scissors' do
    sign_in_and_play
    click_button 'Rock'
  end
end