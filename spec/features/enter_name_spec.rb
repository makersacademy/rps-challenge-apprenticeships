require_relative 'web_helpers'

feature 'player name' do

  scenario 'allows a player to enter their name' do
    sign_in
    expect(page).to have_content 'Harry'
  end
  
end
