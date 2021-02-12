feature 'Try again' do
   scenario 'The player can try again' do
     sign_in_and_play
     click_button 'Rock'
     click_button 'Have another go!'
     expect(page).to have_content "Welcome Jessica! Let us battle!\nPlease pick rock, paper or scissors."
   end
 end
