feature 'Play' do
  scenario 'Choise of three weapon' do
    visit('/')
    fill_in :player_name, with: 'Charlotte'
    click_button 'Submit'
     expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end

    scenario 'choose your weapon' do
    sign_in
    click_button 'Rock'
    expect(page).to have_content 'Rock'
  end
end