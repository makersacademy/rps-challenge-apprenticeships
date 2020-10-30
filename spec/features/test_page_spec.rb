require_relative 'web_helpers'

feature 'Home page' do
  scenario '2 input fields and a submit button' do
    visit '/'
    expect(page).to have_button('Submit')
    expect(page).to  have_field('player1')
    expect(page).to  have_field('player2')
  end
end

feature 'Player1 page' do
  scenario 'show player 1 and player 2 names' do
    visit '/'
    sign_in_and_play
    expect(page).to have_content "Joe and Abby entered the game!"
  end
  scenario 'Ask the first player for their choice' do
    visit '/'
    sign_in_and_play
    expect(page).to have_content "Joe choose your weapon!"
  end
  scenario 'expects the three buttons as options' do
    visit '/'
    sign_in_and_play
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end
  scenario 'clicking Rock takes you to the next page' do
    visit '/'
    sign_in_and_play
    click_on "Rock"
    expect(page.current_path).to eq '/Player2'
  end
  scenario 'clicking Paper takes you to the next page' do
    visit '/'
    sign_in_and_play
    click_on "Paper"
    expect(page.current_path).to eq '/Player2'
  end
  scenario 'clicking Scissors takes you to the next page' do
    visit '/'
    sign_in_and_play
    click_on "Scissors"
    expect(page.current_path).to eq '/Player2'
  end
end

feature 'Player2 page' do
  scenario 'Ask player2 for their choice' do
    visit '/'
    sign_in_and_play
    click_on "Paper"
    expect(page).to have_content "Abby choose your weapon!"
  end
  scenario 'expects the three buttons as options' do
    visit '/'
    sign_in_and_play
    click_on "Paper"
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end
  scenario 'clicking Rock takes you to the next page' do
    visit '/'
    sign_in_and_play
    click_on "Paper"
    click_on "Rock"
    expect(page.current_path).to eq '/choices'
  end
  scenario 'clicking Paper takes you to the next page' do
    visit '/'
    sign_in_and_play
    click_on "Paper"
    click_on "Paper"
    expect(page.current_path).to eq '/choices'
  end
  scenario 'clicking Scissors takes you to the next page' do
    visit '/'
    sign_in_and_play
    click_on "Paper"
    click_on "Scissors"
    expect(page.current_path).to eq '/choices'
  end
end
