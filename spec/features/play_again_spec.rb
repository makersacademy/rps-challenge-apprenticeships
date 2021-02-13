require_relative 'web_helpers'

feature 'play game' do

  scenario 'player plays single player game' do
    sign_in
    click_button 'Rock'
    click_button 'Play Again'
    expect(page).to have_content 'Rock Paper Scissors!'
  end  
  
  scenario 'player plays multiplayer game' do
    multiplayer_sign_in
    click_button 'Rock'
    click_button 'Paper'
    click_button 'Play Again'
    expect(page).to have_content 'Rock Paper Scissors!'
  end

end
