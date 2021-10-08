feature 'Enter Names' do
    scenario 'Displays form and has submit button' do
      visit('/')
      expect(page).to have_content 'ROCK PAPER SCISSORS'
      expect(page).to have_content 'Please enter your name'
      expect(page).to have_content 'submit'
    end
  
    scenario 'will store names given by the player' do
      sign_in_and_play
      expect(page).to have_content 'stella choose your move!'
    end
  end