feature 'home page' do
  scenario 'user can enter name on home page' do
    visit '/'
    expect(page).to have_content('Enter your name!')
  end
end

feature 'enter game' do
  scenario 'User can click play and enter game' do
    sign_in_and_play
    expect(page).to have_content('Hello Dave. Welcome to Rock Paper Scissors. Lets Play!')
  end
end

feature 'select rock' do
  scenario 'User can click rock, paper or scissors' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content('You chose Rock')
  end
end
