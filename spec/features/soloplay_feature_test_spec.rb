feature 'soloplay' do
  scenario 'visit the page and have title' do
    visit '/'
    click_button('2. Player vs Computer')
    expect(page).to have_content("ROCK PAPER SCISSORS LIZARD SPOCK!")
  end

  scenario 'visit the page and prompts player for his/her name' do
    visit '/'
    click_button('2. Player vs Computer')
    expect(page).to have_content("Name yourself player!")
  end

  scenario 'visit the page and puts you in a game' do
    visit '/'
    click_button('2. Player vs Computer')
    expect(page).to have_content("Name yourself player!")
  end

  scenario 'visit the page and get back to main menu' do
    visit '/'
    click_button('2. Player vs Computer')
    click_button('Back to Main Menu')
    expect(page).to have_xpath('/')
  end
end
