feature 'choose rock, paper, or scissors' do

  scenario 'be able to see rps choices/buttons' do
    input_name_and_start_game
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

end