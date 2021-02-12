feature 'play game' do
  
  scenario 'player chooses rock' do
    visit('/')
    fill_in :name, with: 'Harry'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content 'Rock'
  end

  scenario 'player chooses paper' do
    visit('/')
    fill_in :name, with: 'Harry'
    click_button 'Submit'
    click_button 'Paper'
    expect(page).to have_content 'Paper'
  end

  scenario 'player chooses scissors' do
    visit('/')
    fill_in :name, with: 'Harry'
    click_button 'Submit'
    click_button 'Scissors'
    expect(page).to have_content 'Scissors'
  end

end