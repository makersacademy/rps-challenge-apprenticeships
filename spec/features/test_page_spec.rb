feature 'test page' do
  scenario 'visit test page' do
    visit '/test'
    expect(page).to have_content('test page')
  end
end

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'player name' do
  scenario 'player can enter their name' do
    fill_in_name
    expect(page).to have_content('Mike! Choose your weapon:')
  end
end

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'allows play' do
  scenario 'player can play rock/paper/scissors against the computer' do
    visit('/game')
    page.find('#rock').click
    srand(5)
    click_button 'Go!'
    expect(page).to have_content('You win!')
  end
end
