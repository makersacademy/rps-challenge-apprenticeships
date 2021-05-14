feature 'Checks to see if the winner is correct' do
  scenario 'player chooses rock and wins' do
    sign_in_play
    srand(1)
    click_button 'Rock'
    expect(page).to have_content 'Congratulations, Luke'
  end

  scenario 'player chooses paper and wins' do
    sign_in_play
    srand(3)
    click_button 'Paper'
    expect(page).to have_content 'Congratulations, Luke'
  end

  scenario 'player chooses scissors and wins' do
    sign_in_play
    srand(2)
    click_button 'Scissors'
    expect(page).to have_content 'Congratulations, Luke'
  end
end
