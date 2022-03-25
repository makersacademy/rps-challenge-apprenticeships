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

feature 'player name choice' do
  scenario 'single player name added' do
    visit('/')
    choose("mode", option: "single_player")
    click_button('Play Now!')
    fill_in('player_one', with: 'kush')
    click_button('Begin Play!')
    expect(page).to have_content 'Kush VS Computer'
  end
end

feature 'player weapon choice' do
  scenario 'player selects rock, paper or scissor' do
    select_single_player
    choose("move", option: "Scissor")
    click_button('Kush Confirm Selection')
    expect(page).to have_content "Kush played Scissor"
  end
end

feature 'computer vs. player' do
  scenario 'computer selects rock, paper or scissors at random' do
    select_single_player
    choose("move", option: "Scissor")
    allow_any_instance_of(Player).to receive(:move).and_return('Rock')
    click_button('Kush Confirm Selection')
    expect(page).to have_content "Computer played Rock"
  end
end
