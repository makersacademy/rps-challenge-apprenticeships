require './app'

feature 'options' do

  scenario 'can print out players name' do
    sign_in_and_play
  expect(page).to have_content 'Hodan'
  end

end
