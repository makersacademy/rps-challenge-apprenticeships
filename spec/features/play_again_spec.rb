require_relative 'web_helpers'

feature 'play game' do

  scenario 'player chooses rock computer chooses rock' do
    sign_in
    click_button 'Rock'
    click_button 'Play Again'
    expect(page).to have_content 'Please choose one of the following options'
  end
  
end
