feature 'play game' do

  scenario 'player chooses rock computer chooses rock' do
    visit('/')
    fill_in :name, with: 'Harry'
    click_button 'Submit'
    click_button 'Rock'
    click_button 'Play Again'
    expect(page).to have_content 'Please choose one of the following options'
  end
end
