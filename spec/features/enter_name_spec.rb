feature 'Start game' do
  scenario 'register player name' do
    visit '/'
    fill_in('player_1', with: 'John Wick')
    click_button('Submit')
    expect(page).to have_content('John Wick')
  end
end