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
    save_and_open_page
   expect(page).to have_button('Play again?')
  end

end
