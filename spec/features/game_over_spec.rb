require './app'

feature 'Choose option' do
  scenario 'choosing rock' do
    visit('/')
    fill_in :player_name, with: 'Nora'
    click_button 'Submit'
    click_button 'Rock'
    if page.has_content?("Computer chose Scissors")
      expect(page).to have_content "Rock beats Scissors. You win!"
    elsif page.has_content?("Computer chose Rock")
      expect(page).to have_content "It's a tie"
    else
      expect(page).to have_content "You lose"
    end
  end
end