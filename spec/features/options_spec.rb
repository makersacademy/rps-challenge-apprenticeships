require './app'

feature 'options' do

  scenario 'can print out players name' do
    sign_in_and_play
  expect(page).to have_content 'Hodan'
  end

  scenario 'can select rock' do
    sign_in_and_play
    choose('rps', option: 'rock')
    click_button 'submit'
   expect(page).to have_button('Play again?')
  end

  scenario 'it can give you a result' do
    srand 1234
    sign_in_and_play
    choose('rps', option: 'rock')
    click_button 'submit'
    expect(page).to have_content "You win"
  end
end
