feature 'homepage' do
  scenario 'visit home page' do
    visit '/'
    expect(page).to have_content('Welcome to Rock, Paper and Scissors Game!')
  end
end

feature 'select gamemode' do
  scenario 'select singleplayer' do
    visit '/'
    choose("mode", option: "single_player")
    click_button('Play Now!')
    expect(page).to have_content('Welcome to Single Player Game!')
  end

  scenario 'select multiplayer' do
    visit '/'
    choose("mode", option: "multiplayer")
    click_button('Play Now!')
    expect(page).to have_content('Welcome to Multiplayer Game!')
  end
end
