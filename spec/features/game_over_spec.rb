require './app'

feature 'Choose option' do
  scenario 'computer chooses scissors' do
    srand 1234
    visit('/')
    fill_in :player_name, with: 'Nora'
    click_button 'Submit'
    click_button 'Rock'

    expect(page).to have_content "Rock beats Scissors. You win!"

  end

  scenario 'computer chooses Rock' do
    srand 1238
    visit('/')
    fill_in :player_name, with: 'Nora'
    click_button 'Submit'
    click_button 'Rock'

    expect(page).to have_content "It's a tie"
  end

  scenario 'computer chooses Paper' do
    srand 1236
    visit('/')
    fill_in :player_name, with: 'Nora'
    click_button 'Submit'
    click_button 'Rock'

    expect(page).to have_content "Paper beats Rock. You lose!"
  end
  
end
