feature 'Can play rock, paper, scissors' do

  scenario 'Can choose rock and see the result of the game' do
    home_page_register
    click_button 'Rock'
    expect(page).to have_content('You chose Rock')
  end

  scenario 'Can choose paper and see the result of the game' do
    home_page_register
    click_button 'Paper'
    expect(page).to have_content('You chose Paper')
  end

  scenario 'Can choose scissors and see the result of the game' do
    home_page_register
    click_button 'Scissors'
    expect(page).to have_content('You chose Scissors')
  end
end