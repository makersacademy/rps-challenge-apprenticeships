feature 'Player weapon' do
  scenario 'player chooses rock' do
    sign_in_and_play
    expect(page).to have_button 'Rock'
  end

  scenario 'player chooses paper' do
    sign_in_and_play
    expect(page).to have_button 'Paper'
  end

  scenario 'player choses scissors' do
    sign_in_and_play
    expect(page).to have_button 'Scissors'
  end

end