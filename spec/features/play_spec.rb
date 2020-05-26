feature 'Playing a game' do

  before do
    visit '/'
    fill_in 'name', with: 'Test Name'
    click_button 'Submit'
  end

  scenario 'see the 3 options' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'choose Rock' do
    click_button 'Rock'
    expect(page).to have_content 'You chose rock'
  end

  scenario 'choose Paper' do
    click_button 'Paper'
    expect(page).to have_content 'You chose paper'
  end

  scenario 'choose Scissors' do
    click_button 'Scissors'
    expect(page).to have_content 'You chose scissors'
  end

end
