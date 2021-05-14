feature 'Allows user to pick a weapon' do
  scenario 'Player picks rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Jim has chosen Rock'
  end
end