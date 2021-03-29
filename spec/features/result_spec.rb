feature 'game result' do 
  scenario 'users are presented the result of the game' do 
    sign_in_and_play
    click_button("Rock")
    srand(1)
    expect(page).to have_text "You have lost!"
  end 
end
