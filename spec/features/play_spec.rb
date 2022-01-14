feature 'play' do
  scenario 'is given 3 choices' do
    visit('/')
    fill_in :player_name, with: 'Alex'
    click_button 'Submit'
    # save_and_open_page
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end

  scenario 'can pick 1 option' do
    visit('/')
    fill_in :player_name, with: 'Alex'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content 'Rock'
    expect(page).to_not have_content 'Scissors'
  end
end