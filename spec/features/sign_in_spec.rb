feature 'sign in with your name' do

  context 'when single player mode' do
    scenario 'will set up a game showing the username vs computer' do
      sign_in_and_start_singleplayer
      expect(page).to have_content('Freddy vs. Computer')
    end
  end
  context 'when multi player mode' do
    scenario 'will set up a game showing both usernames' do
      sign_in_and_start_multiplayer 
      expect(page).to have_content('Freddy vs. Jason')
    end
  end

end