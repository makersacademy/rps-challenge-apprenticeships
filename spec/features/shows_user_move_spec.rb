feature 'Displays the users RPS move' do
  scenario 'shows the user their RPS move' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content('Rock')
  end
end