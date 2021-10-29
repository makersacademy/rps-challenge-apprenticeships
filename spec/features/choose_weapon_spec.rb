feature 'Choose a weapon' do
  scenario 'the user can choose their weapon' do
    sign_in
    click_button 'Scissors'
    expect(page).to have_content('Patrick: Scissors')
  end
end
