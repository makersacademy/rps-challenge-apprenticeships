feature 'home page' do
  scenario 'it greets the user' do
    visit '/'
    expect(page).to have_content 'Rock, Paper, Scissors. EXPERIENCE THE POWER OF FATE.'
  end
  scenario 'it asks the player to input their name' do
    visit '/'
    fill_in :name, with: 'Reginald'
    click_button 'Submit'
    expect(page).to have_content 'Welcome, Reginald.'
  end
end
