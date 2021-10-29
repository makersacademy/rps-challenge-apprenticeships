feature 'Play the game' do
  scenario 'After signing in, we can select a weapon' do
    sign_in
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end
  scenario 'the user can choose their weapon and play' do
    sign_in
    click_button 'Scissors'
    allow_any_instance_of(Object).to receive(:sample) { :rock }
    expect(page).to have_content('You loose')
  end
end
