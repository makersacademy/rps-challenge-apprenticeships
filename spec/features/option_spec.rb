require './app'

feature 'options' do
    
  scenario 'can select rock' do
    sign_in_and_play
    choose('rps', option: 'Rock')
    click_button 'Submit'
    save_and_open_page
   expect(page).to have_content('Glen you have choosen: Rock')
  end

end