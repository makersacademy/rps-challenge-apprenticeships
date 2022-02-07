feature 'Playing a game of Rock, Paper, Scissors' do
  scenario 'player chooses Rock' do
    sign_in_and_play
    click_link 'Begin Game'
    click_link 'Rock'

    expect(page).to have_content 'Player choice: Rock'
    expect(page).to have_content 'Computer choice:'
  end

  scenario 'player chooses Paper' do
    sign_in_and_play
    click_link 'Begin Game'
    click_link 'Paper'

    expect(page).to have_content 'Player choice: Paper'
    expect(page).to have_content 'Computer choice:'
  end

  scenario 'player chooses Scissors' do
    sign_in_and_play
    click_link 'Begin Game'
    click_link 'Scissors'

    expect(page).to have_content 'Player choice: Scissors'
    expect(page).to have_content 'Computer choice:'
  end

  scenario 'player wants to play another game' do
    sign_in_and_play
    click_link 'Begin Game'
    click_link 'Scissors'
    click_link 'Play again!'

    expect(page).to have_content 'Choose Rock, Paper or Scissors'
  end
end
