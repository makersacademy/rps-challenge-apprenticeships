feature 'Front page with display of options available' do
  scenario 'displays game name' do
    visit('/')
    expect(page).to have_content('ROCK PAPER SCISSORS!')
  end

  scenario 'displays Rules option' do
    visit('/')
    expect(page).to have_button('1. Rules')
  end

  scenario 'visit the homepage' do
    visit('/')
    expect(page).to have_button('2. Player vs Computer')
  end

  scenario 'visit the homepage' do
    visit('/')
    expect(page).to have_content('3. Player vs Player')
  end
end

# scenario 'lets user select their name' do
#   visit('/')
#   fill_in :player_name, with: 'Vincenzo'
#   click_button 'Let\'s play!'
#   expect(page).to have_content 'Vincenzo vs Computer'
# end