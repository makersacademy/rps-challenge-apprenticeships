feature 'test page' do
  scenario 'visit test page' do
    visit '/test'
    expect(page).to have_content('test page')
  end
end

feature 'homepage' do
  scenario 'vist home page' do
    visit '/home'
    expect(page).to have_content('Welcome to')
  end
  scenario 'displays field to allow user to input a name' do
    visit '/home'
    expect(page).to have_content('Enter your name')
  end
end

feature 'play' do
  scenario 'once the user submits their name a new page is loaded' do
    sign_in_and_play
    expect(page).to have_content 'Please select your move'
  end
  scenario 'The user can select a move and it will move the user to the result page' do
    sign_in_and_play
    choose 'rock'
    click_button 'Make move'
    expect(page).to have_content 'You selected: Rock'
  end
  scenario 'The user can select a move and it will show the computer move' do
    sign_in_and_play
    choose 'rock'
    click_button 'Make move'
    expect(page).to have_content 'Your opponent selected:'
  end
end
