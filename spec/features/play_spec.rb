feature 'Play the game' do
  scenario 'After signing in, we can select a weapon' do
    visit '/'
    fill_in 'user_name', with: 'Patrick'
    click_button 'Register'
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end
  scenario 'the user can choose their weapon and play' do
    visit '/'
    fill_in 'user_name', with: 'Patrick'
    click_button 'Register'
    click_button 'Scissors'
    allow_any_instance_of(Object).to receive(:sample) { :rock }
    expect(page).to have_content('You loose')
  end
end
