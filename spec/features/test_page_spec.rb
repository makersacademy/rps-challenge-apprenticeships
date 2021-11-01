require 'game'
feature 'pages' do
  scenario 'visit test page' do
    visit '/test'
    expect(page).to have_content('test page')
  end
  scenario 'visit index should bring login' do
    visit '/'
    expect(page).to have_content('login')
  end
  scenario 'play should show user name' do
    sign_in_and_play
    expect(page).to have_content 'Charlotte'
  end
  scenario 'play should brings status' do
    sign_in_and_play
    expect(page).to have_content Game::STATUSSES[:make_choice]
  end
  scenario 'rock play should display results' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Results'
  end
  scenario 'paper play should display results' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'Results'
  end
  scenario 'scissors play should display results page' do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'Opponent\'s'
  end
  scenario 'scissors play, player 2 plays rock should result player2 wins' do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'Computer wins'
  end
end
