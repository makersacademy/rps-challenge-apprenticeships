feature 'View options' do
  scenario 'see rock, paper, scissor buttons' do
    visit('/')
    fill_in :player_name, with: 'Computer'
    click_button "Let's play!"
    expect(page).to have_selector(:link_or_button, 'Rock')
    expect(page).to have_selector(:link_or_button, 'Paper')
    expect(page).to have_selector(:link_or_button, 'Scissor')
  end
end
